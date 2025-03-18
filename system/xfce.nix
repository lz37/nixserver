{ ... }:

{
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
    rdp = {
      enable = true;
      audio.enable = true;
      # defaultWindowManager
    };
  };
}
