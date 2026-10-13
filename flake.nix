{
  description = "My NixOS server configuration";

  inputs = {
    # Same version as the one installed from the USB stick
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs }: {
    # "baguette" must be identical to networking.hostName in configuration.nix
    nixosConfigurations.baguette =nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
