{
  makeSetupHook,
  lib,
  callPackage
}:
makeSetupHook {
  name = "removeReferencesToRustToolchainHook";
  substitutions = {
    storeDir = builtins.storeDir;
    nukeRefsTo = callPackage ./nukeRefsTo.nix { };
  };
} ./removeReferencesToRustToolchainHook.sh
