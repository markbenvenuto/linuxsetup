#scons CCFLAGS="-Wa,--compress-debug-sections -gsplit-dwarf" --opt=on --modules=ninja,enterprise --ssl CC=/opt/mongodbtoolchain/v2/bin/gcc CXX=/opt/mongodbtoolchain/v2/bin/g++ VARIANT_DIR=ice_gcc_opt --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown linux-gcc-opt-toolchain.ninja
python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections -gsplit-dwarf" --opt=on --modules=ninja,enterprise CC=/opt/mongodbtoolchain/v3/bin/gcc CXX=/opt/mongodbtoolchain/v3/bin/g++ VARIANT_DIR=ice_gcc_opt_dyn --link-model=dynamic --icecream --allocator=system MONGO_VERSION=4.3.0 MONGO_GIT_HASH=unknown linux-gcc-opt-dyn-toolchain.ninja
