src_dir=../..
if [[ ! -f $src_dir/CMakeLists.txt ]]; then
  echo "CMakeLists.txt not found in $src_dir, abort"
  exit 1
fi
cmake -DHARDWARE_BENCHMARKS=ON \
      -DTBB_USE_DEBUG_BUILD=OFF \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo $src_dir
