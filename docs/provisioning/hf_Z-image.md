# Manual provisioning Z-Image

- [HF ComfyUI](https://huggingface.co/Comfy-Org/z_image)
- [HF Original](https://huggingface.co/Tongyi-MAI/Z-Image)
- [Vae](https://huggingface.co/wangkanai/flux-dev-fp16)
- [Clear Vae](https://huggingface.co/easygoing0114/Z-Image_clear_vae)


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

### Image_clear_vae

#### Natural

```bash
hf download easygoing0114/Z-Image_clear_vae Z-Image_natural_vae.safetensors \ 
--local-dir=/workspace/ComfyUI/models/vae
```

#### Clear

```bash
hf download easygoing0114/Z-Image_clear_vae Z-Image_clear_vae.safetensors \ 
--local-dir=/workspace/ComfyUI/models/vae
```
