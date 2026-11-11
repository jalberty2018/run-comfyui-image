# Qwen Image 2512 with Lightning and ControlNet

Generate images with Qwen Image 2512 in ComfyUI. The selected BF16 or FP8 model and encoder, VAE, Lightning LoRAs, ControlNet, upscaler, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only Qwen Image 2512 generation components are downloaded, not Qwen Image Edit or unrelated model families. The pod selects the model and workflows for the available VRAM.

## Start here

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

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

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

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
