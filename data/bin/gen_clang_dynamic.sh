python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections -gsplit-dwarf" CC=/opt/mongodbtoolchain/v3/bin/clang CXX=/opt/mongodbtoolchain/v3/bin/clang++ VARIANT_DIR=ice_dyn_clang --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown --ssl --link-model=dynamic --allocator=system --use-libunwind=off linux-clang-dynamic-toolchain.ninja