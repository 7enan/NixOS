{
  inputs = {
    # Outros inputs
    declarative-flatpak.url = "github:in-a-dil-emma/declarative-flatpak/latest";
  };

  outputs = { self, nixpkgs, home-manager, declarative-flatpak, ... }:
  {
    # Configurações do sistema e Home Manager
    homeConfigurations = {
      yourUsername = home-manager.lib.homeManagerConfiguration {
        modules = [
          # Importando o módulo do declarative-flatpak
          declarative-flatpak.homeModules.default
        ];

        # Configurações adicionais do Home Manager
        home.packages = [
        ];
      };
    };
  };
}
