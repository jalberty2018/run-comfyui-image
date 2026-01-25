# Run image inference with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables.
- Supports advanced workflows for **image generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.
- Automatic selecting bf16 or fp8 models/workflows if supported, view hardware requirements for possible GPU's

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not stable and will be updated.

## Template Deployment

### Deployment/Usage information

- The templates on runpod are tested on a RTX 6000,5000,4500,L40S.
- Avoid using ID's without a region as they are not reliable.

### Runpod templates

- See hardware requirements for GPU
- Specific models/loras/workflows for the templates are downloaded when the pod starts.
- See the [tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_tutorial/) for the available features. 

- 👉 [Runpod Z-Image Turbo](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o)
- 👉 [Runpod Flux.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o)
- 👉 [Runpod Qwen image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o)
- 👉 [Runpod Qwen image edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o)

### Hardware requirements

| Model           | Tested GPU          | Min VRAM | Min RAM |
|-----------------|---------------------|----------|---------|
| Z-Image Turbo   | RTX A5000, A4500    | 20 GB    | 50 GB   |
| Flux.2 Dev      | RTX A6000           | 44 GB    | 50 GB   |
| Qwen image bf16       | RTX A6000/L40S | 44 GB    | 65 GB   |
| Qwen image fp8        | RTX A4090      | 24 GB    | 50 GB   |
| Qwen image edit       | RTX A6000/L40S | 44 GB    | 65 GB   |

### Storage requirements

| Component       | Model | Minimum                    |
|-----------------|-------|----------------------------|
| Volume Storage  | ZIT   | 50 GB (`/workspace`)       |
| Volume Storage  | Flux  | 90 GB (`/workspace`)       |
| Volume Storage  | Qwen  | 70 GB (`/workspace`)       |
| Pod Storage     | —     | 15 GB                      |

## Image documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_tutorial/)



