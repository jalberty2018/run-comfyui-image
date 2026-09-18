# Qwen Image 2512 with Lightning and ControlNet

Generate images with Qwen Image 2512 in ComfyUI. The selected BF16 or FP8 model and encoder, VAE, Lightning LoRAs, ControlNet, upscaler, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only Qwen Image 2512 generation components are downloaded, not Qwen Image Edit or unrelated model families. The pod selects the model and workflows for the available VRAM.

## Choose an image template

| Template | Best for |
|---|---|
| **Qwen Image 2512 — this template** | Text-to-image and ControlNet-guided generation |
| [Qwen Image Edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o) | Editing existing images, loops and multiple angles |
| [Z-Image](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o) | Base/Turbo generation, uncensored Qwen and ControlNet |
| [ERNIE-Image](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o) | Base/Turbo generation with built-in prompt enhancer |
| [FLUX.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o) | High-quality generation, references and camera angles |
| [FLUX.2 Klein 9B](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o) | Smaller FLUX editing/generation; non-commercial |

## Start here

1. [Deploy Qwen Image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o).
2. Choose BF16 for 44+ GB VRAM or FP8 for a 24 GB GPU.
3. Allocate the matching Pod RAM and at least 70 GB persistent storage.
4. Set `PASSWORD` and any required download tokens.
5. Deploy and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content`.
7. Open ComfyUI and load the matching high- or low-VRAM workflow.

## Included workflows and components

- Qwen Image 2512 BF16 and FP8 diffusion profiles.
- Qwen2.5-VL-7B BF16 and FP8-scaled text encoders.
- Qwen Image VAE.
- Lightning 4-step and 8-step LoRAs.
- Fun ControlNet Union.
- Resolution-to-size, advanced T2I and ControlNet I2I workflows.
- 4x upscaler, CUDA 12.8 and compiled acceleration.
- ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Profile | Tested GPU | Min VRAM | Pod RAM | Volume |
|---|---|---:|---:|---:|
| BF16 | RTX A6000 | 44 GB | 65 GB | 70 GB minimum |
| FP8 | RTX A5000 / RTX 3090 | 24 GB | 45 GB | 70 GB minimum |

Container disk: **15 GB**. The template currently reserves **90 GB volume**. Requirements increase with resolution, ControlNet and batch size.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
