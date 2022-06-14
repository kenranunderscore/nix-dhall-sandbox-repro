{ pkgs }:

pkgs.dhallPackages.callPackage ({ buildDhallDirectoryPackage, buildDhallUrl }:
  buildDhallDirectoryPackage {
    name = "my-dhall-package";
    src = ./.;
    file = "package.dhall";
    source = true;
    document = false;
    dependencies = [
      (buildDhallUrl {
        url =
          "https://raw.githubusercontent.com/bobdoah/dhall-gitlab-ci/5805c9b69c2b99ebcdd56490acc54a02cf4b8b1d/package.dhall";
        hash = "sha256-ZYhiHii90Nd7N8Ic5FxW5nHYxMU8lC8PTFJATjp5Rx0=";
        dhallHash =
          "sha256:6588621e28bdd0d77b37c21ce45c56e671d8c4c53c942f0f4c52404e3a79471d";
      })
    ];
  }) { }
