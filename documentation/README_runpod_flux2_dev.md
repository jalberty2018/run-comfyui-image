# One Click - FLUX.2 Dev with Turbo and multi-angle control

Generate and transform images with FLUX.2 Dev in ComfyUI. The selected BF16 or FP8 model, VAE, Mistral encoder, Turbo and multi-angle LoRAs, upscaler, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only FLUX.2 Dev components are downloaded. The pod automatically selects the high- or low-VRAM workflow, avoiding an unusable model profile and downloads for unrelated image families.

## Choose an image template

| Template | Best for |
|---|---|
| **FLUX.2 Dev — this template** | High-quality generation, reference images and camera angles |
| [FLUX.2 Klein 9B](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o) | Smaller FLUX editing and generation; non-commercial |
| [Z-Image](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o) | Base/Turbo generation, uncensored Qwen and ControlNet |
| [ERNIE-Image](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o) | Base/Turbo generation with built-in prompt enhancer |
| [Qwen Image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o) | Text-to-image and ControlNet generation |
| [Qwen Image Edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o) | Image editing, loops and multiple angles |

## Start here

1. [Deploy FLUX.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o).
2. Choose BF16 for 44+ GB VRAM or FP8 mixed for a 24 GB GPU.
3. Allocate the matching Pod RAM and persistent volume storage.
4. Set `PASSWORD`; BF16 access may also require an authorized `HF_TOKEN`.
5. Deploy and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content`.
7. Open ComfyUI and load the supplied high- or low-VRAM workflow.

## Included workflows and components

- FLUX.2 Dev BF16 and FP8-mixed profiles.
- FLUX.2 VAE and Mistral-3-Small encoder.
- Turbo and 72-pose multi-angle LoRAs.
- Text/image-to-image and camera-angle workflows.
- JoyCaption image-to-text and 4x upscaler.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Profile | Tested GPU | Min VRAM | Pod RAM | Volume |
|---|---|---:|---:|---:|
| BF16 | RTX 6000 Ada | 44 GB | 80 GB | 90 GB minimum |
| FP8 mixed | RTX 3090 | 24 GB | 50 GB | 75 GB minimum |

Container disk: **15 GB**. The template currently reserves **95 GB volume**. Requirements increase with resolution, references and batch size.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
