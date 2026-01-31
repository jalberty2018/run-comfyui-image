# Manual provisioning Flux.2 Klein

## 9B

- [HF 9B](https://huggingface.co/black-forest-labs/FLUX.2-klein-9B)
- [HF base 9B](https://huggingface.co/black-forest-labs/FLUX.2-klein-base-9B)
- [HF ComfyUI 9B](https://huggingface.co/Comfy-Org/vae-text-encorder-for-flux-klein-9b)

## 4B

- [HF ComfyUI 4B](https://huggingface.co/Comfy-Org/flux2-klein-4B/)

## Diffusion_model

### Official 9b (distilled)

```bash
hf download black-forest-labs/FLUX.2-klein-9B flux-2-klein-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### Official 9b base (gated)

```bash
hf download black-forest-labs/FLUX.2-klein-base-9B flux-2-klein-base-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### 4b (distilled)

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/diffusion_models/flux-2-klein-4b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### 4b base

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/diffusion_models/flux-2-klein-base-4b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### ComfyUI 9B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/text_encoders/qwen_3_8b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI fp8 9B

```bash
hf download Comfy-Org/flux2-devComfy-Org/vae-text-encorder-for-flux-klein-9b split_files/text_encoders/qwen_3_8b_fp8mixed.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## ComfyUI 4B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/text_encoders/qwen_3_4b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI 4B fp8

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/text_encoders/qwen_3_4b_fp4_flux2.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### ComfyUI 9B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### ComfyUI 4B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b  split_files/vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```
