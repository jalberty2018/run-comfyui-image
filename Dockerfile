# syntax=docker/dockerfile:1.7
# run-comfyui-image
FROM ls250824/comfyui-runtime:03022026

WORKDIR /ComfyUI

# Adding requirements internal comfyui-manager
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    matrix-nio \
    -r manager_requirements.txt

# Copy ComfyUI configurations and ini settings
COPY --chmod=644 configuration/comfy.settings.json user/default/comfy.settings.json
COPY --chmod=644 configuration/config.ini user/__manager/config.ini

# Clone
WORKDIR /ComfyUI/custom_nodes

RUN --mount=type=cache,target=/root/.cache/git \
    git clone --depth=1 --filter=blob:none https://github.com/rgthree/rgthree-comfy.git && \
    git clone --depth=1 --filter=blob:none https://github.com/liusida/ComfyUI-Login.git && \
    git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-KJNodes.git && \
	git clone --depth=1 --filter=blob:none https://github.com/StartHua/Comfyui_joytag.git && \
	git clone --depth=1 --filter=blob:none https://github.com/1038lab/ComfyUI-JoyCaption.git && \
	git clone --depth=1 --filter=blob:none https://github.com/alessandrozonta/Comfyui-LoopLoader.git && \
	git clone --depth=1 --filter=blob:none https://github.com/quasiblob/ComfyUI-EsesImageAdjustments.git && \
	git clone --depth=1 --filter=blob:none https://github.com/quasiblob/ComfyUI-EsesImageEffectCurves.git && \
	git clone --depth=1 --filter=blob:none https://github.com/quasiblob/ComfyUI-EsesImageEffectLevels.git && \
	git clone --depth=1 --filter=blob:none https://github.com/regiellis/ComfyUI-EasyColorCorrector.git && \
	git clone --depth=1 --filter=blob:none https://github.com/alexopus/ComfyUI-Image-Saver.git && \
	git clone --depth=1 --filter=blob:none https://github.com/Jonseed/ComfyUI-Detail-Daemon.git && \
	git clone --depth=1 --filter=blob:none https://github.com/chrisgoringe/cg-image-filter.git && \
	git clone --depth=1 --filter=blob:none https://github.com/KY-2000/comfyui-save-image-enhanced.git && \
	git clone --depth=1 --filter=blob:none https://github.com/ClownsharkBatwing/RES4LYF.git && \
	git clone --depth=1 --filter=blob:none https://github.com/BlenderNeko/ComfyUI_Noise.git && \
	git clone --depth=1 --filter=blob:none https://github.com/evanspearman/ComfyMath.git && \
	git clone --depth=1 --filter=blob:none https://github.com/city96/ComfyUI-GGUF.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Azornes/Comfyui-Resolution-Master.git && \
	git clone --depth=1 --filter=blob:none https://github.com/ssitu/ComfyUI_UltimateSDUpscale --recursive && \
	git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-segment-anything-2.git && \
    git clone --depth=1 --filter=blob:none https://github.com/1038lab/ComfyUI-RMBG.git && \
	git clone --depth=1 --filter=blob:none https://github.com/Fannovel16/comfyui_controlnet_aux.git && \
	git clone --depth=1 --filter=blob:none https://github.com/liusida/ComfyUI-AutoCropFaces.git && \
	git clone --depth=1 --filter=blob:none https://github.com/GizmoR13/PG-Nodes.git && \
	git clone --depth=1 --filter=blob:none https://github.com/BigStationW/ComfyUi-Scale-Image-to-Total-Pixels-Advanced && \
	git clone --depth=1 --filter=blob:none https://github.com/bradsec/ComfyUI_StringEssentials.git && \
	git clone --depth=1 --filter=blob:none https://github.com/x3bits/ComfyUI-Power-Flow.git && \
	git clone --depth=1 --filter=blob:none https://github.com/9nate-drake/Comfyui-SecNodes.git && \
	git clone --depth=1 --filter=blob:none https://github.com/PozzettiAndrea/ComfyUI-SAM3.git && \
	git clone --depth=1 --filter=blob:none https://github.com/heyburns/image-chooser-classic.git && \
	git clone --depth=1 --filter=blob:none https://github.com/neonr-0/ComfyUI-PixelConstrainedScaler.git && \
	git clone --depth=1 --filter=blob:none https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git && \
	git clone --depth=1 --filter=blob:none https://github.com/ChangeTheConstants/SeedVarianceEnhancer.git && \
	git clone --depth=1 --filter=blob:none https://github.com/erosDiffusion/ComfyUI-EulerDiscreteScheduler.git && \
	git clone --depth=1 --filter=blob:none https://github.com/numz/ComfyUI-SeedVR2_VideoUpscaler.git && \
	git clone --depth=1 --filter=blob:none https://github.com/BigStationW/ComfyUi-ConditioningNoiseInjection.git && \
	git clone --depth=1 --filter=blob:none https://github.com/BigStationW/ComfyUi-ConditioningTimestepSwitch.git && \
	git clone --depth=1 --filter=blob:none https://github.com/lrzjason/Comfyui-LatentUtils.git && \
	git clone --depth=1 --filter=blob:none https://github.com/geroldmeisinger/ComfyUI-outputlists-combiner.git && \
	git clone --depth=1 --filter=blob:none https://github.com/RamonGuthrie/ComfyUI-RBG-SmartSeedVariance.git && \
	git clone --depth=1 --filter=blob:none https://github.com/willmiao/ComfyUI-Lora-Manager.git && \
	git clone --depth=1 --filter=blob:none https://github.com/rethink-studios/comfyui-model-linker-desktop.git && \
	git clone --depth=1 --filter=blob:none https://github.com/lrzjason/Comfyui-QwenEditUtils.git && \ 
	git clone --depth=1 --filter=blob:none https://github.com/LAOGOU-666/ComfyUI-LG_SamplingUtils.git && \
	git clone --depth=1 --filter=blob:none https://github.com/scraed/LanPaint.git && \
	git clone --depth=1 --filter=blob:none https://github.com/princepainter/ComfyUI-PainterQwenImageEdit.git && \
	git clone --depth=1 --filter=blob:none https://github.com/capitan01R/ComfyUI-Flux2Klein-Enhancer.git && \
	git clone --depth=1 --filter=blob:none https://github.com/martin-rizzo/ComfyUI-ZImagePowerNodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/naku-yh/ComfyUI_Flux2ImageReference.git && \
	git clone --depth=1 --filter=blob:none https://github.com/aledelpho/Arthemy_Live-Tuner-ZIT-ComfyUI.git && \
	git clone --depth=1 --filter=blob:none https://github.com/facok/comfyui-meancache-z.git && \
    git clone --depth=1 --filter=blob:none https://github.com/remingtonspaz/ComfyUI-ReferenceChain.git && \
	git clone --depth=1 --filter=blob:none https://github.com/capitan01R/ComfyUI-CapitanZiT-Scheduler.git

# Rewrite any top-level CPU ORT refs to GPU ORT
WORKDIR /ComfyUI/custom_nodes/ComfyUI-RMBG
RUN set -eux; \
  for f in \
    requirements.txt; do \
      [ -f "$f" ] || continue; \
      sed -i -E 's/^( *| *)(onnxruntime)([<>=].*)?(\s*)$/\1onnxruntime-gpu==1.22.*\4/i' "$f"; \
    done

# Pixi problem SAM3
RUN sed -i '/^comfy-env/d' /ComfyUI/custom_nodes/ComfyUI-SAM3/requirements.txt
RUN sed -i '/^comfy-test/d' /ComfyUI/custom_nodes/ComfyUI-SAM3/requirements.txt

# Install Dependencies for Cloned Repositories
WORKDIR /ComfyUI/custom_nodes
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    diffusers psutil \
    -r ComfyUI-Login/requirements.txt \
    -r ComfyUI-KJNodes/requirements.txt \
    -r RES4LYF/requirements.txt \
    -r ComfyUI-GGUF/requirements.txt \
    -r ComfyUI-RMBG/requirements.txt \
    -r comfyui_controlnet_aux/requirements.txt \
	-r Comfyui-SecNodes/requirements.txt \
	-r ComfyUI-EasyColorCorrector/requirements.txt \
	-r ComfyUI-Image-Saver/requirements.txt \
	-r comfyui-vrgamedevgirl/requirements.txt \
    -r ComfyUI-Detail-Daemon/requirements.txt \
    -r ComfyUI-SeedVR2_VideoUpscaler/requirements.txt \
	-r ComfyUI-JoyCaption/requirements.txt \
	-r ComfyUI-JoyCaption/requirements_gguf.txt \
	-r ComfyUI-outputlists-combiner/requirements.txt \
	-r ComfyUI-Lora-Manager/requirements.txt \
	-r ComfyUI-SAM3/requirements.txt 

# Add settings for lora manager 
WORKDIR /ComfyUI/custom_nodes/ComfyUI-Lora-Manager
COPY --chmod=644 /configuration/lora-manager-settings.json settings.json.template

# Set Working Directory
WORKDIR /

# Clone documentation repo from comfyui-docs
RUN --mount=type=cache,target=/root/.cache/git \
    git clone --depth=1 --filter=blob:none https://github.com/jalberty2018/comfyui-docs.git /comfyui-docs

# Copy docs *inside* the image
RUN mkdir -p /docs && \
    cp /comfyui-docs/ComfyUI_image_configuration.md /docs/ComfyUI_image_configuration.md && \
    cp /comfyui-docs/ComfyUI_image_custom_nodes.md /docs/ComfyUI_image_custom_nodes.md && \
    cp /comfyui-docs/ComfyUI_image_hardware.md /docs/ComfyUI_image_hardware.md && \
    cp /comfyui-docs/ComfyUI_image_image_setup.md /docs/ComfyUI_image_image_setup.md && \
    cp /comfyui-docs/ComfyUI_image_resources.md /docs/ComfyUI_image_resources.md

# Cleanup
RUN rm -rf /comfyui-docs

# Copy Scripts and documentation
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/files-on-workspace.sh onworkspace/test-on-workspace.sh onworkspace/docs-on-workspace.sh / 
COPY --chmod=664 /documentation/README.md /README.md
COPY --chmod=644 test/ /test
COPY --chmod=644 docs/ /docs

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Labels
LABEL org.opencontainers.image.title="ComfyUI 0.12.0 for image inference" \
      org.opencontainers.image.description="ComfyUI + internal manager + flash-attn + sageattention + onnxruntime-gpu + torch_generic_nms + code-server + civitai downloader + huggingface_hub + custom_nodes" \
      org.opencontainers.image.source="https://hub.docker.com/r/ls250824/run-comfyui-image" \
      org.opencontainers.image.licenses="MIT"

# Test
RUN python -c "import torch, torchvision, torchaudio, triton, importlib, importlib.util as iu; \
print(f'Torch: {torch.__version__}'); \
print(f'Torchvision: {torchvision.__version__}'); \
print(f'Torchaudio: {torchaudio.__version__}'); \
print(f'Triton: {triton.__version__}'); \
name = 'onnxruntime_gpu' if iu.find_spec('onnxruntime_gpu') else ('onnxruntime' if iu.find_spec('onnxruntime') else None); \
ver = (importlib.import_module(name).__version__ if name else 'not installed'); \
label = 'ONNXRuntime-GPU' if name=='onnxruntime_gpu' else 'ONNXRuntime'; \
print(f'{label}: {ver}'); \
print('CUDA available:', torch.cuda.is_available()); \
print('CUDA version:', torch.version.cuda); \
print('Device:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'CPU')"

# Start Server
CMD [ "/start.sh" ]
