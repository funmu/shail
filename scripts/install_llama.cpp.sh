# create a root directory
mkdir shail.1

# clone the repo with code and tools
git clone https://github.com/ggerganov/llama.cpp.git ./llama.cpp

# Build the llama.cpp components
# let us use tee to also keep track of logs from the build activity
mkdir logs
pushd llama.cpp

# prepare the scripts for compiling the llama.cpp binaries (10s of seconds)
cmake -B build | tee ../logs/1.prep.build.llama.cpp.txt

# do the compilation as per recipe from the prep step to create llama.cpp binaries (2-3 minutes)
cmake --build build --config Release | tee ../../logs/2.do.build.llama.cpp.txt

popd

# voila! your own llama-server binary is READY!
ls -l ./llama.cpp/build/bin/llama-server
