#pragma once
#include <cuda_fp16.h>

namespace helper{
    void convert(int n, __half* FP16_ptr, float* FP32_ptr);
}