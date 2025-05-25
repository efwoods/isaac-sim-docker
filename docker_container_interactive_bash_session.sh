docker run --name isaac-sim --entrypoint bash -it --runtime=nvidia --gpus all -e "ACCEPT_EULA=Y" --rm --network=host \
     -e "PRIVACY_CONSENT=Y" \
     -v ~/docker/isaac-sim/cache/ov:/root/.cache/ov:rw \
     -v ~/docker/isaac-sim/cache/pip:/root/.cache/pip:rw \
     -v ~/docker/isaac-sim/cache/glcache:/root/.cache/nvidia/GLCache:rw \
     -v ~/docker/isaac-sim/cache/computecache:/root/.nv/ComputeCache:rw \
     -v ~/docker/isaac-sim/cache/asset_browser:/isaac-sim/exts/isaacsim.asset.browser/cache:rw \
     -v ~/docker/isaac-sim/logs:/root/.nvidia-omniverse/logs:rw \
     -v ~/docker/isaac-sim/data:/root/.local/share/ov/data:rw \
     -v ~/docker/isaac-sim/pkg:/root/.local/share/ov/pkg:rw \
     -v ~/docker/isaac-sim/documents:/root/Documents:rw \
     nvcr.io/nvidia/isaac-sim:4.5.0 

# while inside the container ./runheadless.sh
