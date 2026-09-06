# One Click - Z-Image Base and Turbo with uncensored Qwen

Generate images with Z-Image Base or the faster Turbo model in ComfyUI. Models, VAEs, ControlNet patches, LoRA, upscaler, custom nodes and workflows are provisioned automatically.

**Uncensored prompting:** this template uses the abliterated Qwen3-4B text encoder without an additional prompt-filtering layer. Users remain responsible for model use and generated content.

## Purpose-built and cost-efficient

Only Z-Image components are downloaded, not the other image-model families. This avoids unnecessary storage use and provisioning time.

## Choose an image template

| Template | Best for |
|---|---|
| **Z-Image Base + Turbo — this template** | Flexible generation, fast Turbo and ControlNet |
| [ERNIE-Image](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o) | Base/Turbo generation with built-in prompt enhancer |
| [FLUX.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o) | High-quality generation, reference images and camera angles |
| [FLUX.2 Klein 9B](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o) | Smaller FLUX editing and generation; non-commercial |
| [Qwen Image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o) | Text-to-image and ControlNet generation |
| [Qwen Image Edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o) | Image editing, loops and multiple angles |

## Start here

1. [Deploy Z-Image Base + Turbo](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o).
2. Select a supported NVIDIA GPU and at least 50 GB Pod RAM.
3. Use at least 50 GB persistent volume storage.
4. Set `PASSWORD` and any required download tokens.
5. Deploy and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content`.
7. Open ComfyUI and load a supplied Z-Image workflow.

## Included workflows and components

- Z-Image Base and Turbo BF16 models.
- Abliterated Qwen3-4B text encoder.
- Natural and FLUX VAEs.
- Base and Turbo Fun ControlNet Union patches.
- Turbo distillation LoRA and 4x upscaler.
- Text-to-image, ControlNet image-to-image and ZSampler Turbo workflows.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Tested GPU | Min VRAM | Min Pod RAM | Volume | Container disk |
|---|---:|---:|---:|---:|
| RTX 3090 / RTX A5000 | 20 GB | 50 GB | 50 GB minimum | 15 GB |

The RunPod template currently reserves **70 GB volume**. Requirements increase with resolution and ControlNet use.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
