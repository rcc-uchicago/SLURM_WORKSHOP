#include<cuda_runtime.h>
#include <stdio.h>
#include <stdlib.h>


int main(int argc, char **argv){
    cudaDeviceProp prop;
    int count;
    cudaGetDeviceCount(&count);
    printf("Number of GPUs on the Node is %d\n", count);
    for (int i=0; i < count; ++i){
        cudaGetDeviceProperties(&prop, i);
        printf("--- General Information for device %d----\n", i);
        printf("Name:  %s\n", prop.name);
        printf("Compute capability: %d.%d\n", prop.major, prop.minor);
        printf("GPU Clock rate: %.0f MHz\n", prop.clockRate*1e-3f);
        printf("------Memory Information for device %d\n", i);
        printf("Total global mem: %.2f GBytes\n", (float) prop.totalGlobalMem / pow(1024, 3));
        printf("Memory clock rate: %.0f MHz\n", prop.memoryClockRate * 1e-3f);
        printf("Memory bus width: %d-bit \n", prop.memoryBusWidth );
        printf("L2 cache size: %d Bytes\n", prop.l2CacheSize );
        
        printf("Threads and Blocks information for %d GPU");
        printf(" Maximum number of Threads per block %d\n", prop.maxThreadsPerBlock);
        printf(" Maximum size of each dimension of block %d x  %d x %d\n", prop.maxThreadsDim[0], prop.maxThreadsDim[1], prop.maxThreadsDim[2]);
        printf(" Maximum sizes of each dimension of grid %d x %d x %d\n", prop.maxGridSize[0], prop.maxGridSize[1], prop.maxGridSize[2]);
 
        return 0;
    
    }






return 0;

}
