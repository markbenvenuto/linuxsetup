python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections -gsplit-dwarf" --dbg=on --ssl CC=/opt/mongodbtoolchain/v3/bin/clang CXX=/opt/mongodbtoolchain/v3/bin/clang++ VARIANT_DIR=ice_clang --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown linux-clang-toolchain.ninja