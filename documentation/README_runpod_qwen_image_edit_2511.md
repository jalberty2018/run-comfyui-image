# Qwen Image Edit 2511 with Lightning and multi-angle control

Edit and extend images with Qwen Image Edit 2511 in ComfyUI. The selected BF16 or FP8 model, Qwen2.5-VL encoder, VAE, Lightning and camera LoRAs, upscaler, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only Qwen Image Edit components are downloaded, not the Qwen Image 2512 generator or unrelated model families. The pod selects the model, LoRAs and workflows for the available VRAM.

## Start here

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

## Included workflows and components

- Qwen Image Edit 2511 BF16 and FP8-mixed profiles.
- Qwen2.5-VL-7B FP8-scaled encoder and Qwen Image VAE.
- Lightning 4-step and 8-step LoRAs.
- Multiple-angle and next-scene LoRAs.
- Standard editing, continuation-loop and multi-angle workflows.
- JoyCaption image-to-text and 4x upscaler.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

## Hardware and storage

| Profile | Tested GPU | Min VRAM | Pod RAM | Volume |
|---|---|---:|---:|---:|
| BF16 | RTX A6000 | 42 GB | 65 GB | 70 GB minimum |
| FP8 | RTX A5000 / RTX 3090 | 24 GB | 45 GB | 70 GB minimum |

Container disk: **15 GB**. The template currently reserves **75 GB volume**. Requirements increase with resolution, input count and loop length.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
