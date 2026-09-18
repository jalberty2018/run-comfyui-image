# Qwen Image Edit 2511 with Lightning and multi-angle control

Edit and extend images with Qwen Image Edit 2511 in ComfyUI. The selected BF16 or FP8 model, Qwen2.5-VL encoder, VAE, Lightning and camera LoRAs, upscaler, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only Qwen Image Edit components are downloaded, not the Qwen Image 2512 generator or unrelated model families. The pod selects the model, LoRAs and workflows for the available VRAM.

## Choose an image template

| Template | Best for |
|---|---|
| **Qwen Image Edit 2511 — this template** | Image editing, continuation loops and multiple angles |
| [Qwen Image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o) | New text-to-image and ControlNet generation |
| [Z-Image](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o) | Base/Turbo generation, uncensored Qwen and ControlNet |
| [ERNIE-Image](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o) | Base/Turbo generation with built-in prompt enhancer |
| [FLUX.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o) | High-quality generation, references and camera angles |
| [FLUX.2 Klein 9B](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o) | Smaller FLUX editing/generation; non-commercial |

## Start here

1. [Deploy Qwen Image Edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o).
2. Select a GPU with at least 24 GB VRAM.
3. Use 65 GB Pod RAM for BF16 or 45 GB for FP8.
4. Allocate at least 70 GB persistent storage.
5. Deploy and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content`.
7. Open ComfyUI and load the matching edit workflow.

## Included workflows and components

- Qwen Image Edit 2511 BF16 and FP8-mixed profiles.
- Qwen2.5-VL-7B FP8-scaled encoder and Qwen Image VAE.
- Lightning 4-step and 8-step LoRAs.
- Multiple-angle and next-scene LoRAs.
- Standard editing, continuation-loop and multi-angle workflows.
- JoyCaption image-to-text and 4x upscaler.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Profile | Tested GPU | Min VRAM | Pod RAM | Volume |
|---|---|---:|---:|---:|
| BF16 | RTX A5000 | 24 GB | 65 GB | 70 GB minimum |
| FP8 | RTX A5000 / RTX 3090 | 24 GB | 45 GB | 70 GB minimum |

Container disk: **15 GB**. The template currently reserves **75 GB volume**. Requirements increase with resolution, input count and loop length.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
