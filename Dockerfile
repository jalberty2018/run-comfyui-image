# syntax=docker/dockerfile:1.7
# run-comfyui-image
FROM ls250824/comfyui-runtime:09092026

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

# Build-only setting; HTTP/1.1 is a transport workaround, not an auth fix.
# Override with --build-arg GIT_HTTP_VERSION=HTTP/2 when appropriate.
ARG GIT_HTTP_VERSION=HTTP/1.1
# Separate layers retain successful clones when a later repository fails.
# Shallow full checkouts avoid the extra lazy blob fetch of --filter=blob:none.
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/rgthree/rgthree-comfy.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/regiellis/ComfyUI-EasyColorCorrector.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/alexopus/ComfyUI-Image-Saver.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Azornes/Comfyui-Resolution-Master.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/GizmoR13/PG-Nodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ChangeTheConstants/SeedVarianceEnhancer.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/erosDiffusion/ComfyUI-EulerDiscreteScheduler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/numz/ComfyUI-SeedVR2_VideoUpscaler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/willmiao/ComfyUI-Lora-Manager.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/scraed/LanPaint.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/marduk191/ComfyUI-ZImageTurboHQNodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/yolain/ComfyUI-Easy-Use.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/liusida/ComfyUI-Login.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-KJNodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/alessandrozonta/Comfyui-LoopLoader.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/quasiblob/ComfyUI-EsesImageAdjustments.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/quasiblob/ComfyUI-EsesImageEffectCurves.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/quasiblob/ComfyUI-EsesImageEffectLevels.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Jonseed/ComfyUI-Detail-Daemon.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/chrisgoringe/cg-image-filter.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/KY-2000/comfyui-save-image-enhanced.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ClownsharkBatwing/RES4LYF.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BlenderNeko/ComfyUI_Noise.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/evanspearman/ComfyMath.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/city96/ComfyUI-GGUF.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git --recursive
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-segment-anything-2.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/1038lab/ComfyUI-RMBG.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Fannovel16/comfyui_controlnet_aux.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/liusida/ComfyUI-AutoCropFaces.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-Scale-Image-to-Total-Pixels-Advanced.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/bradsec/ComfyUI_StringEssentials.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/x3bits/ComfyUI-Power-Flow.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/PozzettiAndrea/ComfyUI-SAM3.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/neonr-0/ComfyUI-PixelConstrainedScaler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-ConditioningNoiseInjection.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-ConditioningTimestepSwitch.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/lrzjason/Comfyui-LatentUtils.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/geroldmeisinger/ComfyUI-outputlists-combiner.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/RamonGuthrie/ComfyUI-RBG-SmartSeedVariance.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/lrzjason/Comfyui-QwenEditUtils.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/LAOGOU-666/ComfyUI-LG_SamplingUtils.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/princepainter/ComfyUI-PainterQwenImageEdit.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/capitan01R/ComfyUI-Flux2Klein-Enhancer.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/naku-yh/ComfyUI_Flux2ImageReference.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/aledelpho/Arthemy_Live-Tuner-ZIT-ComfyUI.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/facok/comfyui-meancache-z.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/remingtonspaz/ComfyUI-ReferenceChain.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/capitan01R/ComfyUI-CapitanZiT-Scheduler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jtydhr88/ComfyUI-qwenmultiangle.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/NickPittas/ComfyUI_CameraAngleSelector.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ethanfel/ComfyUI-LoRA-Optimizer.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/facok/ComfyUI-DiversityBoost.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/IAMCCS/IAMCCS-nodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/xmarre/ComfyUI-Flux2Klein-Conditioning-Toolkit.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Nekodificador/ComfyUI-NKD-Klein-Tools.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/xb1n0ry/ComfyUI-KleinRefGrid.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/orpheus-gaze/ComfyUI-S2Guidance.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/shootthesound/comfyui-ReferenceLatentPlus.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/KursatAs/ComfyUI-Flux2KontextConditioner.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-Untwisting-RoPE.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-TextEncodeEditAdvanced.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Gavr728/ComfyUI_KleinTiledUpscaler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/fpgaminer/joycaption_comfyui.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/shootthesound/ComfyUI-SequentialImageLoader.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/nova452/ComfyUI-Conditioning-Rebalance.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/obvpm/comfyui-obvpm.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/yanokusnir-ai/one-node-flux-2-klein.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kianxyzw/comfyui-model-linker.git

WORKDIR /ComfyUI/custom_nodes/ComfyUI-RMBG
# Rewrite any top-level CPU ORT refs to GPU ORT
RUN set -eux; \
  for f in \
    requirements.txt; do \
      [ -f "$f" ] || continue; \
      sed -i -E 's/^( *| *)(onnxruntime)([<>=].*)?(\s*)$/\1onnxruntime-gpu==1.22.*\4/i' "$f"; \
    done

RUN set -eux; \
  grep -RniE '^[[:space:]]*onnxruntime([[:space:]]*[<>=!~].*)?[[:space:]]*$|^[[:space:]]*onnxruntime-gpu([[:space:]]*[<>=!~].*)?[[:space:]]*$' \
    /ComfyUI/custom_nodes || true

WORKDIR /ComfyUI/custom_nodes/ComfyUI-SAM3
# Working version for SAM3 (comfy-env problems)
# Commit date: 2026-03-16
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" fetch --depth=1 origin 5c0474e292e3658645f46e46378d58935a82692f && git checkout --detach 5c0474e292e3658645f46e46378d58935a82692f
# Pixi problem SAM3
RUN sed -i '/^comfy-env/d' requirements.txt
RUN sed -i '/^comfy-test/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/ComfyUI-Easy-Use
# remove onnxruntime
RUN sed -i '/^onnxruntime/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/IAMCCS-nodes
# 1.3.6
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" fetch --depth=1 origin 4dd640ca6b8564976a8cb62be59a50d83677cdd6 && git checkout --detach 4dd640ca6b8564976a8cb62be59a50d83677cdd6

WORKDIR /
# Install Dependencies global
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
  diffusers psutil pydantic pydantic-settings

# Install Dependencies for Cloned Repositories
WORKDIR /ComfyUI/custom_nodes
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    -r ComfyUI-Login/requirements.txt \
    -r ComfyUI-KJNodes/requirements.txt \
    -r RES4LYF/requirements.txt \
    -r ComfyUI-GGUF/requirements.txt \
    -r ComfyUI-RMBG/requirements.txt \
    -r comfyui_controlnet_aux/requirements.txt \
    -r ComfyUI-EasyColorCorrector/requirements.txt \
    -r ComfyUI-Image-Saver/requirements.txt \
    -r comfyui-vrgamedevgirl/requirements.txt \
    -r ComfyUI-Detail-Daemon/requirements.txt \
    -r ComfyUI-SeedVR2_VideoUpscaler/requirements.txt \
    -r ComfyUI-outputlists-combiner/requirements.txt \
    -r ComfyUI-Lora-Manager/requirements.txt \
    -r ComfyUI-SAM3/requirements.txt \
    -r ComfyUI-Easy-Use/requirements.txt \
    -r joycaption_comfyui/requirements.txt \
    -r comfyui-model-linker/requirements.txt

# Add settings for lora manager 
WORKDIR /ComfyUI/custom_nodes/ComfyUI-Lora-Manager
COPY --chmod=644 /configuration/lora-manager-settings.json settings.json.template

# Set Working Directory
WORKDIR /

# Clone the documentation repo and copy the required files in one layer.
# Keeping these operations together prevents a stale clone layer from being reused
# when a documentation filename changes upstream.
RUN set -eux; \
    GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jalberty2018/comfyui-docs.git /comfyui-docs && \
    mkdir -p /docs && \
    cp /comfyui-docs/RunPod_configuration.md /docs/ComfyUI_image_configuration.md && \
    cp /comfyui-docs/ComfyUI_image_custom_nodes.md /docs/ComfyUI_image_custom_nodes.md && \
    cp /comfyui-docs/ComfyUI_image_hardware.md /docs/ComfyUI_image_hardware.md && \
    cp /comfyui-docs/ComfyUI_image_image_setup.md /docs/ComfyUI_image_image_setup.md && \
    cp /comfyui-docs/ComfyUI_image_resources.md /docs/ComfyUI_image_resources.md && \
    rm -rf /comfyui-docs

# Copy Scripts and documentation
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/files-on-workspace.sh onworkspace/test-on-workspace.sh onworkspace/docs-on-workspace.sh / 
COPY --chmod=664 /documentation/README.md /README.md
COPY --chmod=644 test/ /test
COPY --chmod=644 docs/ /docs

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Licenses differ by component; see THIRD_PARTY_NOTICES.md.
# Clear any inherited blanket license label for the assembled image.
# Labels
LABEL org.opencontainers.image.title="ComfyUI 0.35.0 for image inference" \
      org.opencontainers.image.description="ComfyUI + internal manager + flash-attn + sageattention + onnxruntime-gpu + torch_generic_nms + code-server + civitai downloader + huggingface_hub + custom_nodes" \
      org.opencontainers.image.source="https://hub.docker.com/r/ls250824/run-comfyui-image" \
      org.opencontainers.image.licenses=""

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
