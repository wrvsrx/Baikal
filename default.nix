{
  stdenvNoCC,
  phpPackages,
  php,
}:
stdenvNoCC.mkDerivation {
  name = "";
  src = ./.;
  nativeBuildInputs = [
    phpPackages.composer
    php
  ];
  buildPhase = "make";
  installPhase = ''
    mkdir -p $out
    cp -r build/baikal/* $out
  '';
}
