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
        ({ config, pkgs, lib, ... }: { # Added 'lib' and will destructure 'home-manager' below
          imports = [ ({ pkgs, config, lib, ... }: { # Destructure 'pkgs', 'config', and 'lib' again
            imports = [ home-manager.nixosModules.home-environment ./user.nix ];
            home.username = "umakanth";
            home.homeDirectory = "/home/umakanth";
          })
        })
      ];
    };
  };
}