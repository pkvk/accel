# accel

## Build

1. Install stack from haskellstack.org
2. Install CUDA
3. Install LLVM

    $ sudo apt install llvm-6.0-dev
4. Export LLVM/CUDA paths

    $ export PATH=/usr/lib/llvm-6.0/bin:$PATH
    $ export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:$LD_LIBRARY_PATH
    $ export LD_LIBRARY_PATH=/usr/local/cuda/nvvm/lib64:$LD_LIBRARY_PATH

5. $ stack build


$ stack exec accel-exe
