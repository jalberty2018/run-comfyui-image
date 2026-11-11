# Z-Image Base and Turbo with uncensored Qwen

Generate images with Z-Image Base or the faster Turbo model in ComfyUI. Models, VAEs, ControlNet patches, LoRA, upscaler, custom nodes and workflows are provisioned automatically.

**Uncensored prompting:** this template uses the abliterated Qwen3-4B text encoder without an additional prompt-filtering layer. Users remain responsible for model use and generated content.

## Purpose-built and cost-efficient

Only Z-Image components are downloaded, not the other image-model families. This avoids unnecessary storage use and provisioning time.

## Start here

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

## Included workflows and components

- Z-Image Base and Turbo BF16 models.
- Abliterated Qwen3-4B text encoder.
- Natural and FLUX VAEs.
- Base and Turbo Fun ControlNet Union patches.
- Turbo distillation LoRA and 4x upscaler.
- Text-to-image, ControlNet image-to-image and ZSampler Turbo workflows.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

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
