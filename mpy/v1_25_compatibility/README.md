In order to compile for MicroPython v1.25.0 (or more likely: with any modern compiler), we need to lightly modify the pinned `secp256k1-zkp` submodule:

* Rename `src/libsecp256k1-config.h` to remove the dash.
* Add a direct include for it in `src/secp256k1.c`.

The simple `modify.sh` script in this directory completes these steps so they can be automated in CI, build scripts, etc. 