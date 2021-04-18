# Lib-Vendor

Vendored libraries for building microcontroller projects. All original licenses
apply.

## Warning

History is not guaranteed to be linear due to the presence of binaries in this
repo. You have been warned. Do not update to a newer version of this repo by
pullng!

## Usage

Compile included source-only libs with `make` done in the root directory.

Define the Makefile variable `LIBROOT` to have the absolute path of the this
library repo, then just use the provided makefile variable in the parent
makefile.

### Provided Variables

- `UC_FLAGS`: Flags to be passed to the compiler that are select the correct
  microprocessor arch
- `UC_INCLUDES`: Includes that should be passed to the compiler
- `UC_LIBS`: Libraries to be passed to the linker

## Updating/Adding New Libraries

[TODO]
