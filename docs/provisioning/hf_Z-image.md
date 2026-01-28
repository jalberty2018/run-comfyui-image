# Manual provisioning Z-Image

- [HF ComfyUI](https://huggingface.co/Comfy-Org/z_image)
- [HF Orignal](https://huggingface.co/Tongyi-MAI/Z-Image)
- [VAE](https://huggingface.co/wangkanai/flux-dev-fp16)

## Diffusion_model

### bf16

```bash
hf download Comfy-Org/z_image split_files/diffusion_models/z_image_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

```bash
hf download Comfy-Org/z_image split_files/text_encoders/qwen_3_4b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### Original

```bash
hf download Comfy-Org/z_image split_files/vae/ae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### bf16

```bash
hf download wangkanai/flux-dev-fp16 vae/flux/flux-vae-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae
```
