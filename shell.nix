with import <nixpkgs> {}; mkShell {
  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib:/run/opengl-driver/lib";
  buildInputs = with pkgs.python312Packages; [
    python
    venvShellHook
  ];
  venvDir = ".venv";
}
