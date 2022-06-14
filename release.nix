let
  pkgs = import <nixpkgs> { };
  foo = import ./foo { inherit pkgs; };
in pkgs.stdenv.mkDerivation {
  name = "blub";
  src = foo;
  nativeBuildInputs = [ pkgs.haskellPackages.dhall-yaml ];
  buildPhase = ''
    export XDG_CACHE_HOME=$(pwd)
    dhall-to-yaml-ng --omit-empty --generated-comment \
                     --output $out \
                     <<<"(./source.dhall).Foo"
  '';
  dontInstall = true;
}
