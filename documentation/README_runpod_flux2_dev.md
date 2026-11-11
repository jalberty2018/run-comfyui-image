# FLUX.2 Dev with Turbo and multi-angle control

Generate and transform images with FLUX.2 Dev in ComfyUI. The selected BF16 or FP8 model, VAE, Mistral encoder, Turbo and multi-angle LoRAs, upscaler, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only FLUX.2 Dev components are downloaded. The pod automatically selects the high- or low-VRAM workflow, avoiding an unusable model profile and downloads for unrelated image families.

## Start here

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

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
