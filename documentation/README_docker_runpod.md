# Run image inference with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables.
- Supports advanced workflows for **image generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.
- Automatic selecting bf16 or fp8 models/workflows.

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API
- Lora Manager

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not stable and will be updated.

## Template Deployment on Runpod

### Deployment/Usage information

- The templates on runpod are tested on RTX GPU's.

### Templates

- Specific models/loras/workflows for the templates are downloaded when the pod starts.
- Flux.2 Klein downloads by default the 4B (none gated) model, see [tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_hf_gated) to add the 9B gated model.  

- 👉 [Z-Image Base and Turbo](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o)

- 👉 [ERNIE-Image Base and Turbo](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o)

- 👉 [Flux.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o)
- 👉 [Flux.2 Klein](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o)

- 👉 [Qwen image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o)
- 👉 [Qwen image edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o)

### Pod documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_tutorial/)

### Hardware requirements

| Model           | Tested GPU          | Min VRAM | Min RAM |
|-----------------|---------------------|----------|---------|
| Z-Image Turbo   | RTX A4500, RTX A5000 | 20 GB    | 50 GB   |
| ERNIE-Image     | RTX A4500 | 20 GB    | 50 GB   |
| Flux.2 Klein    | RTX A4500    | 20 GB    | 50 GB   |
| Flux.2 Dev bp16 | RTX A6000 ada | 44 GB    | 80 GB   |
| Flux.2 Dev fp8  | RTX 3090    | 24 GB    | 50 GB   |
| Qwen image bf16       | RTX A6000  | 44 GB    | 65 GB   |
| Qwen image fp8        | RTX A5000 , RTX 3090 | 24 GB    | 45 GB   |
| Qwen image edit bf16  | RTX A6000 | 44 GB    | 65 GB   |
| Qwen image edit fp8   | RTX A5000 , RTX 3090  | 24 GB    | 45 GB   |

### Volume storage requirements

| Model | Minimum                    |
|-------|----------------------------|
| ZI    | 50 GB (`/workspace`)       |
| ERNIE | 50 GB (`/workspace`)       |
| Flux bf16 | 90 GB (`/workspace`)       |
| Flux fp8 | 75 GB (`/workspace`)       |
| Qwen  | 70 GB (`/workspace`)       |

### Pod storage requirements

| Model | Minimum                    |
|-------|----------------------------|
| —     | 15 GB                      |

## Other available pods

- [WAN 2.2](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3](https://comfyui.rozenlaan.site/ComfyUI_LTX/)



