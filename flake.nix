{
  description = "foo";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/master";
  # inputs.nixpkgs.url = "path:/forks/nixpkgs";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default =
      let pkgs = import nixpkgs { system = "x86_64-linux"; };
      in import ./foo { inherit pkgs; };
  };
}
