{ pkgs, ... }:

{
  nix = {
    settings = {
      # 实验性功能
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = [
        # 中科大
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        # 清华
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
        # 北外
        # "https://mirrors.bfsu.edu.cn/nix-channels/store"
        # ISCAS
        # "https://mirror.iscas.ac.cn/nix-channels/store"
        # 上交
        # "https://mirror.sjtu.edu.cn/nix-channels/store"
        # 南大
        # "https://mirror.nju.edu.cn/nix-channels/store"
        pkgs.nur.repos.xddxdd._meta.atticUrl
        # "https://nix-community.cachix.org?priority=100"
        # "https://devenv.cachix.org?priority=100"
        "https://chaotic-nyx.cachix.org"
      ];
      trusted-public-keys = [
        pkgs.nur.repos.xddxdd._meta.atticPublicKey
        # "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        # "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
        "chaotic-nyx.cachix.org-1:HfnXSw4pj95iI/n17rIDy40agHj12WfF+Gqk6SonIT8="
      ];
      trusted-users = [
        "root"
        "zerozawa"
      ];
    };
    # gc
    gc = {
      automatic = true;
      dates = "03:00";
      options = "--delete-older-than 5d";
    };
    optimise = {
      automatic = true;
      dates = [ "03:45" ];
    };
  };
}
