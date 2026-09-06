# One Click - ERNIE-Image Base and Turbo with prompt enhancement

Generate images with ERNIE-Image Base or Turbo in ComfyUI. Both diffusion models, VAE, text encoder, dedicated prompt enhancer, custom nodes and workflows are provisioned automatically.

## Purpose-built and cost-efficient

Only ERNIE-Image components are downloaded, not the other image-model families. Base and Turbo share their encoders and VAE, so both modes fit efficiently in one template.

## Choose an image template

| Template | Best for |
|---|---|
| **ERNIE-Image Base + Turbo — this template** | Base/Turbo generation with a built-in prompt enhancer |
| [Z-Image](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o) | Flexible generation, uncensored Qwen and ControlNet |
| [FLUX.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o) | High-quality generation, reference images and camera angles |
| [FLUX.2 Klein 9B](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o) | Smaller FLUX editing and generation; non-commercial |
| [Qwen Image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o) | Text-to-image and ControlNet generation |
| [Qwen Image Edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o) | Image editing, loops and multiple angles |

## Prompting modes

| Mode | Use it when |
|---|---|
| Direct prompt | You already have the final prompt and want the shortest workflow |
| ERNIE prompt enhancer | You want the supplied encoder to expand or refine the prompt |

Prompt enhancement is optional; both modes use the same ERNIE diffusion model selected in the workflow.

## Start here

1. [Deploy ERNIE-Image Base + Turbo](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o).
2. Select a supported NVIDIA GPU and at least 50 GB Pod RAM.
3. Use at least 50 GB persistent volume storage.
4. Set `PASSWORD` and any required download tokens.
5. Deploy and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content`.
7. Open ComfyUI and load the Base or Turbo workflow.

## Included components

- ERNIE-Image Base and Turbo diffusion models.
- Ministral-3-3B text encoder and ERNIE prompt enhancer.
- FLUX.2 VAE.
- Ready-to-use Base and Turbo text-to-image workflows.
- CUDA 12.8 with compiled attention and GPU acceleration.
- ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Tested GPU | Min VRAM | Min Pod RAM | Volume | Container disk |
|---|---:|---:|---:|---:|
| RTX A4500 | 20 GB | 50 GB | 50 GB minimum | 15 GB |

The RunPod template currently reserves **70 GB volume**. Requirements increase with resolution and batch size.

## Configuration and help

`PASSWORD` protects pod tools. Use `HF_TOKEN` for gated/rate-limited Hugging Face downloads and `CIVITAI_TOKEN` for CivitAI. Store tokens as RunPod secrets.

- [Image overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_image_hardware/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
