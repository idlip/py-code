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
        # python311Packages.python-lsp-server
        # nodePackages.pyright
        (python311.withPackages(ps: with ps; [ 
          pylint
          pyflakes
          numpy
          matplotlib matplotlib-inline
        ]))
        # add more packages (https://search.nixos.org)
      ];

    };
  };
}
