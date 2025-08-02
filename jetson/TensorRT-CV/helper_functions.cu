#include "helper_functions.cuh"

__global__ void convert_to_float(int n, __half* FP16_ptr, float* FP32_ptr){
    // get the thread index
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    // Make sure the index does not go out of bounds
    if(i < n){
        // get the current FP16 value
        __half FP16_val = FP16_ptr[i];
        // convert it to FP32 value
        float FP32_val = __half2float(FP16_val);
        // store it in the FP32_ptr
        FP32_ptr[i] = FP32_val;
    }
}

// launch function
namespace helper{
    void convert(int n, __half* FP16_ptr, float* FP32_ptr){
        int num_threads = 512;
        int num_block = (n + num_threads - 1) / num_threads;
        convert_to_float<<<num_block, num_threads>>>(n, FP16_ptr, FP32_ptr);
    }
}