#scons CCFLAGS="-Wa,--compress-debug-sections -gsplit-dwarf" --ssl CC=/opt/mongodbtoolchain/v2/bin/gcc CXX=/opt/mongodbtoolchain/v2/bin/g++ VARIANT_DIR=ice_gcc --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown linux-gcc-toolchain.ninja
#scons CCFLAGS="-Wa,--compress-debug-sections -gsplit-dwarf -Wno-noexcept-type" --dbg=on --ssl CC=gcc CXX=g++ VARIANT_DIR=ice_local_gcc --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown linux-gcc-local.ninja
#scons CCFLAGS="-Wno-noexcept-type" --opt=on --ssl CC=gcc CXX=g++ VARIANT_DIR=ice_local_gcc --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown linux-gcc-local.ninja
#python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections" LINKFLAGS="-fuse-ld=lld" --opt=on --release --ssl CC=gcc CXX=g++ VARIANT_DIR=ice_local_gcc --icecream MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown linux-gcc-local.ninja
#python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections" CCFLAGS="-Wno-redundant-move" LINKFLAGS="-fuse-ld=lld" --opt=on --release --ssl CC=gcc CXX=g++ VARIANT_DIR=ice_local_gcc MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown --icecream linux-gcc-local.ninja
python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections" CCFLAGS="-Wno-redundant-move" LINKFLAGS="-fuse-ld=lld" --opt=on --release --ssl CC=gcc CXX=g++ VARIANT_DIR=ice_local_gcc MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown --icecream linux-gcc-local.ninja

