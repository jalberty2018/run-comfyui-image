# FLUX.2 Klein 9B with uncensored text encoder

Generate, edit and control images with FLUX.2 Klein 9B in ComfyUI. Distilled and Base models, VAE, uncensored encoder, reference-control LoRA, custom nodes and workflows are provisioned automatically.

**Uncensored prompting:** this template uses a dedicated uncensored FLUX.2 Klein text encoder without an additional prompt-filtering layer. Users remain responsible for model use and generated content.

> **Non-commercial license:** FLUX.2 Klein 9B is released under the Black Forest Labs FLUX Non-Commercial License. It may be used for personal and research purposes, but not commercially. You are responsible for license compliance.

## Purpose-built and cost-efficient

Only FLUX.2 Klein components are downloaded, not FLUX.2 Dev or other image models. This keeps the template smaller and suitable for a 20 GB GPU.

## Choose an image template

| Template | Best for |
|---|---|
| **FLUX.2 Klein 9B — this template** | Smaller FLUX generation/editing; non-commercial |
| [FLUX.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o) | Larger high-quality FLUX workflow |
| [Z-Image](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o) | Base/Turbo generation, uncensored Qwen and ControlNet |
| [ERNIE-Image](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o) | Base/Turbo generation with built-in prompt enhancer |
| [Qwen Image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o) | Text-to-image and ControlNet generation |
| [Qwen Image Edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o) | Image editing, loops and multiple angles |

## Start here

1. [Deploy FLUX.2 Klein 9B](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o).
2. Select a GPU with at least 20 GB VRAM and 50 GB Pod RAM.
3. Use sufficient persistent volume storage for both supplied model variants.
4. Deploy and follow the container logs.
5. Wait for `Provisioning done, ready to create AI content`.
6. Open ComfyUI and load a supplied Klein workflow.

## Included workflows and components

- FLUX.2 Klein 9B Distilled and Base models.
- Uncensored Klein text encoder and FLUX.2 VAE.
- Reference-pose control LoRA.
- Image editing, multi-image input and target-control workflows.
- Base text-to-image, RefControl and JoyCaption workflows.
- CUDA 12.8, ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

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
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
