# FLUX.2 Klein 9B with uncensored text encoder

Generate, edit and control images with FLUX.2 Klein 9B in ComfyUI. Distilled and Base models, VAE, uncensored encoder, reference-control LoRA, custom nodes and workflows are provisioned automatically.

**Uncensored prompting:** this template uses a dedicated uncensored FLUX.2 Klein text encoder without an additional prompt-filtering layer. Users remain responsible for model use and generated content.

> **Non-commercial license:** FLUX.2 Klein 9B is released under the Black Forest Labs FLUX Non-Commercial License. It may be used for personal and research purposes, but not commercially. You are responsible for license compliance.

## Purpose-built and cost-efficient

Only FLUX.2 Klein components are downloaded, not FLUX.2 Dev or other image models. This keeps the template smaller and suitable for a 20 GB GPU.

## Start here

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

## Included workflows and components

- FLUX.2 Klein 9B Distilled and Base models.
- Uncensored Klein text encoder and FLUX.2 VAE.
- Reference-pose control LoRA.
- Image editing, multi-image input and target-control workflows.
- Base text-to-image, RefControl and JoyCaption workflows.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

## Hardware and storage

| Tested GPU | Min VRAM | Min Pod RAM | Template volume | Container disk |
|---|---:|---:|---:|---:|
| RTX A4500 | 20 GB | 50 GB | 80 GB | 15 GB |

Requirements increase with resolution, reference count and workflow complexity.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
