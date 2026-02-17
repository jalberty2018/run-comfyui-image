# Environment variables templates

## ZIT/ZIB

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/z_image_turbo
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/z_image_turbo_bf16.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/z_image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=split_files/diffusion_models/z_image_bf16.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/z_image_turbo
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_3_4b.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_PATCHES1=alibaba-pai/Z-Image-Turbo-Fun-Controlnet-Union-2.0
HF_MODEL_PATCHES_FILENAME1=Z-Image-Turbo-Fun-Controlnet-Union-2.0.safetensors
HF_MODEL_LORA1=Comfy-Org/z_image_turbo
HF_MODEL_LORA_FILENAME1=split_files/loras/z_image_turbo_distill_patch_lora_bf16.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/ZIT-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ZIT-t2i-clownshark-beta-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/ZIT-t2i-clownshark-flowmatch-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/ZIT-t2i-euler-dpmpp-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/ZIT-t2i-ZSamplerTurbo-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/ZIB-ZIT-t2i-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image/ZIB-t2i-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image/ZIB-t2i-clownshark-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image/ZIB-ZIT-t2i-euler-flowmatch-pod.json

### Private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/z_image_turbo
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/z_image_turbo_bf16.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/z_image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=split_files/diffusion_models/z_image_bf16.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_VAE2=easygoing0114/Z-Image_clear_vae
HF_MODEL_VAE_FILENAME2=Z-Image_natural_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/z_image_turbo
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_3_4b.safetensors
HF_MODEL_PATCHES1=alibaba-pai/Z-Image-Turbo-Fun-Controlnet-Union-2.0
HF_MODEL_PATCHES_FILENAME1=Z-Image-Turbo-Fun-Controlnet-Union-2.0.safetensors
HF_MODEL_LORA1=Comfy-Org/z_image_turbo
HF_MODEL_LORA_FILENAME1=split_files/loras/z_image_turbo_distill_patch_lora_bf16.safetensors
CIVITAI_MODEL_LORA_URL1=https://civitai.com/api/download/models/2489956?type=Model&format=SafeTensor
CIVITAI_MODEL_LORA_URL2=https://civitai.com/api/download/models/2506996?type=Model&format=SafeTensor
CIVITAI_MODEL_LORA_URL3=https://civitai.com/api/download/models/2491551?type=Model&format=SafeTensor
CIVITAI_MODEL_LORA_URL4=https://civitai.com/api/download/models/2509564?type=Model&format=SafeTensor
CIVITAI_MODEL_LORA_URL5=https://civitai.com/api/download/models/2546755?type=Model&format=SafeTensor
CIVITAI_MODEL_LORA_URL6=https://civitai.com/api/download/models/2549555?type=Model&format=SafeTensor
WORKFLOW1=https://provisioning.rozenlaan.site/image/ZIT-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ZIT-t2i-clownshark-beta-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/ZIT-t2i-clownshark-flowmatch-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/ZIT-t2i-euler-dpmpp-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/ZIT-t2i-ZSamplerTurbo-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/ZIB-ZIT-t2i-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image/ZIB-t2i-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image/ZIB-t2i-clownshark-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image/ZIB-ZIT-t2i-euler-flowmatch-pod.json
```

## Z-Image Base

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/z_image
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/z_image_bf16.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/z_image
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_3_4b.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/ZIB-t2i-euler-flowmatch-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ZIB-t2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/ZIB-t2i-clownshark-pod.json
```

## Flux.2 dev

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/flux2-dev
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/flux2_dev_fp8mixed.safetensors
HF_MODEL_VAE1=Comfy-Org/flux2-dev
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/flux2-dev
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/mistral_3_small_flux2_fp8.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
WORKFLOW1=https://provisioning.rozenlaan.site/image/FLUX2-ti2i-pod.json
```

### Private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/flux2-dev
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/flux2_dev_fp8mixed.safetensors
HF_MODEL_HVRAM_DIFFUSION_MODELS1=black-forest-labs/FLUX.2-dev
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=flux2-dev.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/flux2-dev
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/mistral_3_small_flux2_fp8.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
WORKFLOW1=https://provisioning.rozenlaan.site/image/FLUX2-ti2i-pod.json
```

## Flux.2 Klein

### Public 4B (free download) & 9B (gated download needs HF_TOKEN to be set)

```bash
HF_TOKEN=place-hugginface-token-secret-here
HF_MODEL_DIFFUSION_MODELS1=black-forest-labs/FLUX.2-klein-9B
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux-2-klein-9b.safetensors
HF_MODEL_DIFFUSION_MODELS2=black-forest-labs/FLUX.2-klein-base-9B
HF_MODEL_DIFFUSION_MODELS_FILENAME2=flux-2-klein-base-9b.safetensors
HF_MODEL_DIFFUSION_MODELS3=Comfy-Org/vae-text-encorder-for-flux-klein-4b
HF_MODEL_DIFFUSION_MODELS_FILENAME3=split_files/diffusion_models/flux-2-klein-4b.safetensors
HF_MODEL_DIFFUSION_MODELS4=Comfy-Org/vae-text-encorder-for-flux-klein-4b
HF_MODEL_DIFFUSION_MODELS_FILENAME4=split_files/diffusion_models/flux-2-klein-base-4b.safetensors
HF_MODEL_VAE1=Comfy-Org/vae-text-encorder-for-flux-klein-9b
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/vae-text-encorder-for-flux-klein-9b
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_3_8b.safetensors
HF_MODEL_TEXT_ENCODERS2=Comfy-Org/vae-text-encorder-for-flux-klein-4b
HF_MODEL_TEXT_ENCODERS_FILENAME2=split_files/text_encoders/qwen_3_4b.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
WORKFLOW1=https://provisioning.rozenlaan.site/image/FLUX-Klein-4B-Base-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/FLUX-Klein-4B-Distilled-t2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Base-t2i-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-i2i-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-t2i-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/FLUX-Klein-4B-Distilled-i2i-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-mi2i-pod.json
```

### private 9B

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=black-forest-labs/FLUX.2-klein-9B
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux-2-klein-9b.safetensors
HF_MODEL_DIFFUSION_MODELS2=black-forest-labs/FLUX.2-klein-base-9B
HF_MODEL_DIFFUSION_MODELS_FILENAME2=flux-2-klein-base-9b.safetensors
HF_MODEL_VAE1=Comfy-Org/vae-text-encorder-for-flux-klein-9b
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/vae-text-encorder-for-flux-klein-9b
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_3_8b.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Base-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-i2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-t2i-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-mi2i-pod.json
```

## Flux.1 dev Kontext

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=black-forest-labs/FLUX.1-Kontext-dev
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux1-kontext-dev.safetensors
HF_MODEL_VAE1=black-forest-labs/FLUX.1-Kontext-dev
HF_MODEL_VAE_FILENAME1=ae.safetensors
HF_MODEL_TEXT_ENCODERS1=comfyanonymous/flux_text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=t5xxl_fp16.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_TEXT_ENCODERS2=zer0int/CLIP-GmP-ViT-L-14
HF_MODEL_TEXT_ENCODERS_FILENAME2=ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors
```

## Flux.1 dev SRPO

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_DIFFUSION_MODELS1=rockerBOO/flux.1-dev-SRPO
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux.1-dev-SRPO-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=comfyanonymous/flux_text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=t5xxl_fp16.safetensors
HF_MODEL_TEXT_ENCODERS2=zer0int/CLIP-GmP-ViT-L-14
HF_MODEL_TEXT_ENCODERS_FILENAME2=ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors
HF_MODEL_VAE1=black-forest-labs/FLUX.1-Kontext-dev
HF_MODEL_VAE_FILENAME1=ae.safetensors
```

## Qwen-image-edit

### 2511

#### public

```bash
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_fp8mixed.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/HunyuanVideo_1.5_repackaged
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_HVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_HVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-fp32.safetensors
HF_MODEL_LVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors
HF_MODEL_LVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-bf16.safetensors
HF_MODEL_LORA1=fal/Qwen-Image-Edit-2511-Multiple-Angles-LoRA
HF_MODEL_LORA_FILENAME1=qwen-image-edit-2511-multiple-angles-lora.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod-LVRAM.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-edit-loop-pod-LVRAM.json
```

#### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_fp8mixed.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/HunyuanVideo_1.5_repackaged
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_HVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_HVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-fp32.safetensors
HF_MODEL_LVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors
HF_MODEL_LVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-bf16.safetensors
HF_MODEL_LORA1=fal/Qwen-Image-Edit-2511-Multiple-Angles-LoRA
HF_MODEL_LORA_FILENAME1=qwen-image-edit-2511-multiple-angles-lora.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod-LVRAM.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-edit-loop-pod-LVRAM.json
```

## Qwen-image-layered

### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Layered_ComfyUI
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_layered_bf16.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image-Layered_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_layered_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/HunyuanVideo_1.5_repackaged
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
```

## Qwen-image

### 2512

#### public

```bash
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_fp8_e4m3fn.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME1=Qwen-Image-Lightning-4steps-V1.0.safetensors
HF_MODEL_LORA2=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME2=Qwen-Image-Lightning-4steps-V2.0.safetensors
HF_MODEL_LORA3=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME3=Qwen-Image-Lightning-8steps-V2.0.safetensors
HF_MODEL_LVRAM_LORA4=lightx2v/Qwen-Image-Lightning
HF_MODEL_LVRAM_LORA_FILENAME4=Qwen-Image-fp8-e4m3fn-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_CONTROLNET1=alibaba-pai/Qwen-Image-2512-Fun-Controlnet-Union
HF_MODEL_CONTROLNET_FILENAME1=Qwen-Image-2512-Fun-Controlnet-Union-2602.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod-LVRAM.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod-LVRAM.json
WORKFLOW_LVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-2512-i2i-controlnet-pod-LVRAM.json
```
#### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_fp8_e4m3fn.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME1=Qwen-Image-Lightning-4steps-V1.0.safetensors
HF_MODEL_LORA2=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME2=Qwen-Image-Lightning-4steps-V2.0.safetensors
HF_MODEL_LORA3=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME3=Qwen-Image-Lightning-8steps-V2.0.safetensors
HF_MODEL_LVRAM_LORA4=lightx2v/Qwen-Image-Lightning
HF_MODEL_LVRAM_LORA_FILENAME4=Qwen-Image-fp8-e4m3fn-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_CONTROLNET1=alibaba-pai/Qwen-Image-2512-Fun-Controlnet-Union
HF_MODEL_CONTROLNET_FILENAME1=Qwen-Image-2512-Fun-Controlnet-Union-2602.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod-LVRAM.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod-LVRAM.json
WORKFLOW_LVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-2512-i2i-controlnet-pod-LVRAM.json
```