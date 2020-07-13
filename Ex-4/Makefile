cudaFlags = -arch=sm_30 -O3 --use_fast_math



deviceQ: deviceQuery.cu
	nvcc -o deviceQ $(cudaFlags) deviceQuery.cu

clean:
	rm -f deviceQ

