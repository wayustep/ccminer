extracflags="-march=native -pthread -fno-strict-aliasing"

CUDA_CFLAGS="-O3 -std=c++11 -Xcompiler -fno-strict-aliasing,-Wall -D_FORCE_INLINES -Wno-deprecated-functions"
./configure CFLAGS="-O3 $extracflags" CXXFLAGS="-O3 -std=c++11 $extracflags" --with-cuda=/usr/local/cuda --with-nvml=libnvidia-ml.so.1
