with import <nixpkgs> {}; mkShell rec {
  packages = [ 
    zlib 
    libGL
    stdenv.cc.cc
    glib
  ] ++ (with pkgs.python312Packages; [
    python
    venvShellHook
    pip
    setuptools
  ]);
  venvDir = ".venv";
  LD_LIBRARY_PATH = "${lib.makeLibraryPath packages}:/run/opengl-driver/lib";
}
