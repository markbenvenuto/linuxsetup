mkdir $HOME/repo || true

git -C $HOME/repo clone git@github.com:10gen/kernel-tools.git

# Clone a full mongodb repo with enteprise and ninja
git -C $HOME/ clone git@github.com:mongodb/mongo.git
git -C $HOME/mongo remote add mcb git@github.com:markbenvenuto/mongo.git

mkdir -p $HOME/mongo/src/mongo/db/modules
git -C $HOME/mongo/src/mongo/db/modules clone git@github.com:10gen/mongo-enterprise-modules.git enterprise
git -C $HOME/mongo/src/mongo/db/modules/enterprise remote add mcb git@github.com:markbenvenuto/mongo-enterprise-modules.git

git -C $HOME/mongo/src/mongo/db/modules clone https://github.com/RedBeard0531/mongo_module_ninja ninja
git -C $HOME/mongo/src/mongo/db/modules/ninja remote add mcb git@github.com:markbenvenuto/mongo_module_ninja.git

if [ -f /opt/mongodbtoolchain/v3/bin/python3 ]; then
    cd $HOME/mongo
    /opt/mongodbtoolchain/v3/bin/python3 -m pip install --user -r ./buildscripts/requirements.txt

    #python3 buildscripts/scons.py CCFLAGS="-Wa,--compress-debug-sections" --dbg=on --ssl CC=/opt/mongodbtoolchain/v3/bin/gcc CXX=/opt/mongodbtoolchain/v3/bin/g++ VARIANT_DIR=gcc MONGO_VERSION=0.0.0 MONGO_GIT_HASH=unknown --enable-free-mon=off linux-gcc-toolchain.ninja && ninja -f linux-gcc-toolchain.ninja -k 0 core
fi

