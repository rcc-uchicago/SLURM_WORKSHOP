#include <stdio.h>
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <cuda_runtime.h>

extern "C" void listdev( int rank ){
    cudaError_t err;
    int dev_cnt = 0;
    err = cudaGetDeviceCount( &dev_cnt );
    assert( err == cudaSuccess || err == cudaErrorNoDevice );
    //printf( "rank %d, cnt %d\n", rank, dev_cnt );
    cudaDeviceProp prop;
    for (int dev = 0; dev < dev_cnt; ++dev) {
        err = cudaGetDeviceProperties( &prop, dev );
        assert( err == cudaSuccess );
        printf( "rank %d, dev %d, prop %s, pci %d, %d, %d\n",
        rank, dev,
        prop.name,
        prop.pciBusID,
        prop.pciDeviceID,
        prop.pciDomainID );
        }   
}
