{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gvfs
    xarchiver
  ];
  programs = {
    firefox = {
      enable = true;
      languagePacks = [ "zh-CN" ];
    };
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
        thunar-dropbox-plugin
        thunar-media-tags-plugin
      ];
    };
  };
  services = {
    xserver = {
      enable = true;
      desktopManager = {
        xterm.enable = true;
        xfce = {
          enable = true;
          enableScreensaver = true;
          enableXfwm = true;
        };
      };
    };
    xrdp = {
      enable = true;
      audio.enable = true;
      defaultWindowManager = "xfce4-session";
    };
  };
}
