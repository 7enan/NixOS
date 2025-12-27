{
  inputs = {
    # Outros inputs
    declarative-flatpak.url = "github:in-a-dil-emma/declarative-flatpak/latest";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  {
    homeConfigurations = {
      renan = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${builtins.currentSystem}; # Referência ao conjunto de pacotes apropriado
        modules = [
          # Importação do seu arquivo home.nix
          import ./users/home.nix
        ];
      };
    };
  };
}
