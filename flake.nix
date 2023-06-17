{
  description = "A basic flake for using python";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = {self, nixpkgs } :
    let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      # config.allowUnfree = true;
    };
    
  in {
    devShell.${system} = pkgs.mkShell {

      nativeBuildInputs = [ pkgs.bashInteractive ];
      buildInputs = with pkgs; [ 
        python
        # add more packages (https://search.nixos.org)
      ];

    };
  };
}
