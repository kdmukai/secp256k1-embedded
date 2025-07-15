In order to compile for MicroPython v1.25.0 (or more likely: with any modern compiler), we need to lightly modify the pinned `secp256k1-zkp` submodule:

* Add an include for `libsecp256k1-config.h` in `secp256k1/src/secp256k1.c`.

The version of `secp256k1.c` in this dir is the same as the pinned version from the `secp256k1-zkp` repo, but with the above include added.

The simple `modify.sh` script in this directory copies this lightly modified `secp256k1.c` over the `secp256k1-zkp` repo's version. This script is provided so it can be automated in CI, build scripts, etc. 