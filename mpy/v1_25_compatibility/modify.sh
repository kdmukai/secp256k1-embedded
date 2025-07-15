#!/bin/sh

# Copy the modified .c file which references the header file
# TODO: The only change in this file is that it adds an include for the above header
#   file. A better solution would be to just insert the include in the original file via
#   a `sed`(?) command here.
cp secp256k1.c ../../secp256k1/src/secp256k1.c
