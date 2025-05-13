{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Or your preferred channel
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.reddy = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux"; # Adjust if your architecture is different
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        home-manager.nixosModules.default
        ({ config, pkgs, ... }: {
          home-manager.users.umakanth = {
            imports = [./user.nix ];
            home.username = "umakanth";
            home.homeDirectory = "/home/umakanth";
          };
        })
      ];
    };
  };
}