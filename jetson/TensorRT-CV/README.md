# TensorRT object detection
This project is a basic object detection pipeline utilizing the TensorRT library. The project is created to explore the TensorRT C++ library, to see if it provide a better inference speed for object detection model compare to the OpenCV DNN module when loading YOLOV8 models.

# Dependencies
- CUDA Toolkit
- OpenCV >= 4.11
- TensorRT

# Known issues
The build_engine function that is used to create engine file from onnx file does not currently support FP16 onnx model.

So if you are trying to build an engine file from a FP16 model onnx file, use the TensorRT trtexec tool instead:

```trtexec --onnx=model.onnx --saveEngine=model.engine --fp16```

# Comparsion results

The test result are with the same model and same image running inference on the same image 10000 times

| Framework | Inference time|
| --------- | ------------- |
| TensorRT  | 0.0201 second |
| OpenCV DNN| 0.0386 second |


