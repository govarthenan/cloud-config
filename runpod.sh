# start script --> bash -c 'wget --no-cache http://raw.githubusercontent.com/govarthenan/cloud-config/main/runpod.sh && chmod +x runpod.sh && ./runpod.sh && /start.sh'

# download and install 
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
chmod +x Miniforge3-$(uname)-$(uname -m).sh
bash Miniforge3-$(uname)-$(uname -m).sh -b

# initiate mamba
${HOME}/miniforge3/bin/mamba init

# configure mamba
${HOME}/miniforge3/bin/conda config --set auto_activate_base false
${HOME}/miniforge3/bin/mamba update -n base --all --yes
