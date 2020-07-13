#include <mpi.h>
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <cuda_runtime.h>
void listdev( int rank );
int main (int argc, char* argv[]){
    int rank, size;
    int buffer_length = 512;
    MPI_Init (&argc, &argv);      
    MPI_Comm_rank (MPI_COMM_WORLD, &rank); 
    MPI_Comm_size (MPI_COMM_WORLD, &size); 
    char hostname[buffer_length];
    int name_len;
    MPI_Get_processor_name(hostname, &name_len);
    printf( "Hello world from process %d running on %s of %d\n", rank, hostname, size );
    MPI_Barrier(MPI_COMM_WORLD);
    listdev(rank);
    /*FILE *fp;
    char path[1035];
    printf("GPU Test\n");
    fp=popen("/gpfs/runtime/bin/check-gpu-devices", "r");

    while(fgets(path, sizeof(path), fp) !=NULL){
        printf("%s", path);
        printf("In GPUS \n");
    }
    pclose(fp);*/
    MPI_Finalize();
   return 0;
}
