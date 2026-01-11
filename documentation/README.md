# Pod image

## Workflows

- Open from ComfyUI's interface on the left
- Download from [workflow examples](https://comfyui.rozenlaan.site/ComfyUI_image_workflows/)

## Pre-Installed Custom Nodes

- Open ComfyUI manager installed custom nodes.
- [custom_nodes](docs/ComfyUI_image_custom_nodes.md)

## Documentation

- [Model provisioning](docs/ComfyUI_image_provisioning.md)
- [Resources](docs/ComfyUI_image_resources.md)
- [Image setup](docs/ComfyUI_image_image_setup.md)
- [Environment variables](docs/ComfyUI_image_configuration.md)
- [Hardware Requirements](docs/ComfyUI_image_hardware.md)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_tutorial)
- [Update](https://comfyui.rozenlaan.site/ComfyUI_image_update)

#### **Huggingface**  

```bash
export HF_TOKEN="xxxxx"
hf download model model_name.safetensors --local-dir /workspace/ComfyUI/models/diffusion_models/
hf upload model /workspace/model.safetensors
```

```bash
hf auth login --token xxxxx
```

#### **CivitAI** 

- Use terminal or ComfyUI-Lora-Manager web interface

```bash
export CIVITAI_TOKEN="xxxxx"
civitai "<download link>" /workspace/ComfyUI/models/diffusion_models
civitai "<download link>" /workspace/ComfyUI/models/loras
civitai --file batch.txt
```

## 7z Compression  

### **Encrypt & Archive Output**  

```bash
7z a -p -mhe=on /workspace/output/output-image-x.7z /workspace/ComfyUI/output/
```

### **Extract Archive**  

```bash
7z x x.7z
```

## Clean up  

```bash
rm -rf /workspace/output/ /workspace/input/ /workspace/ComfyUI/output/ /workspace/ComfyUI/models/loras/
ncdu
```

## Utilities  

```bash
nvtop      # GPU Monitoring
nvidia-smi # GPU information
htop       # Process Monitoring  
mc         # Midnight Commander (file manager)  
nano       # Text Editor
ncdu       # Clean Up
unzip      # uncompress
7z         # Archiving
runpodctl  # runpod pod management
```

## Comfy-cli

```bash
comfy-cli set-default /workspace/ComfyUI/
comfy-cli
comfy-cli env
```

## Test/debug

```bash
python /workspace/test/test_pytorch_cuda.py
python /workspace/test/test_flash.py
python /workspace/test/test_sage.py
python /workspace/test/test_torch_generic_nms.py
python /workspace/test/test_llmama_cpp.py
python /workspace/test/test_environment.py
python /workspace/test/test_environment_runpod.py
```