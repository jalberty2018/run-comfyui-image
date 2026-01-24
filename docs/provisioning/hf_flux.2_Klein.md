# Manual provisioning Flux.2 Klein

- [HF](https://huggingface.co/black-forest-labs/FLUX.2-klein-9B)
- [HF base](https://huggingface.co/black-forest-labs/FLUX.2-klein-base-9B)
- [HF ComfyUI](https://huggingface.co/Comfy-Org/vae-text-encorder-for-flux-klein-9b)

## Diffusion_model

### Official 9b (gated, distilled)

```bash
hf download black-forest-labs/FLUX.2-klein-9B flux-2-klein-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### Official 9b base (gated)

```bash
hf download black-forest-labs/FLUX.2-klein-base-9B flux-2-klein-base-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### ComfyUI

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/text_encoders/qwen_3_8b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI fp8

```bash
hf download Comfy-Org/flux2-devComfy-Org/vae-text-encorder-for-flux-klein-9b split_files/text_encoders/qwen_3_8b_fp8mixed.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### ComfyUI

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```
