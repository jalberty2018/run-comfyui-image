# Run image inference with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables.
- Supports advanced workflows for **image generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8 and higher).
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
- [Deployment help](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)

- 👉 [Z-Image Base and Turbo](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o)

- 👉 [Flux.2 Dev](https://console.runpod.io/hub/template/bob26220bj?ref=se4tkc5o)
- 👉 [Flux.2 Klein](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o)

- 👉 [Qwen image 2512](https://console.runpod.io/hub/template/cbb50i30rx?ref=se4tkc5o)
- 👉 [Qwen image edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o)

## License note on FLUX.2 [klein] 9B

- The 9B model is released under the FLUX Non-Commercial License by Black Forest Labs. This means you can use it for personal and research purposes, but commercial use is not permitted. If you use the 9B model, you are responsible for complying with that license.

### Pod documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

## Other available video pods and templates

- [WAN 2.2](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [Minimax H3](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
