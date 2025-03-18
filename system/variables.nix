{ config, pkgs, ... }:

{
  environment = {
    localBinInPath = true;
    homeBinInPath = true;
    sessionVariables = rec {
      ALL_PKG_STORE = "${config.zerozawa.nixos.path.code}/store";
      YARN_CACHE_FOLDER = "${ALL_PKG_STORE}/yarn/cache";
      YARN_GLOBAL_FOLDER = "${ALL_PKG_STORE}/yarn/global";
      npm_config_store_dir = "${ALL_PKG_STORE}/pnpm";
      GOPATH = "${ALL_PKG_STORE}/golang";
      GOPROXY = "https://goproxy.cn,direct";
      BUN_INSTALL = "${ALL_PKG_STORE}/bun";
      DENO_DIR = "${ALL_PKG_STORE}/deno/cache";
      DENO_INSTALL_ROOT = "${ALL_PKG_STORE}/deno/bin";
      LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
    };
  };
}
