{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    busybox
    gcc
    rar
    unar
    zip
    unzip
    p7zip
    # audio
    sox
    shntool
    bchunk
    cuetools
  ];
}
