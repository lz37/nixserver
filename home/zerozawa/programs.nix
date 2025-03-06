{ pkgs, config, ... }:

{
  programs = {
    atuin = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        auto_sync = true;
        sync_frequency = "5m";
        sync_address = config.zerozawa.nixos.atuin.server;
        search_mode = "prefix";
      };
    };
    direnv = {
      enable = true;
      enableZshIntegration = true;
      config = {
        whitelist.prefix = [ config.zerozawa.nixos.path.codeSrc ];
      };
      nix-direnv.enable = true;
    };
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
    };
    git = {
      enable = true;
      package = pkgs.gitAndTools.gitFull;
      userName = config.zerozawa.git.userName;
      userEmail = config.zerozawa.git.userEmail;
      signing.format = "openpgp";
      extraConfig = {
        credential = {
          helper = "store";
        };
      };
    };
  };

}
