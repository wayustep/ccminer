# possible additional CUDA_CFLAGS
#-gencode=arch=compute_50,code=\"sm_50,compute_50\"
#-gencode=arch=compute_35,code=\"sm_35,compute_35\"
#-gencode=arch=compute_30,code=\"sm_30,compute_30\"

#--ptxas-options=\"-v -dlcm=cg\""

extracflags="-march=native -std=c++11 -pthread -fno-strict-aliasing"

CUDA_CFLAGS="-O0 -g  -std=c++11 -Xcompiler -fno-strict-aliasing,-Wall -D_FORCE_INLINES" ./configure CXXFLAGS="-O0 -g  $extracflags" --with-cuda=/usr/local/cuda --with-nvml=libnvidia-ml.so
