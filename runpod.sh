# download and install 
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
chmod +x Miniforge3-$(uname)-$(uname -m).sh
bash Miniforge3-$(uname)-$(uname -m).sh -b

# initiate mamba
${HOME}/miniforge3/bin/mamba init
source ${HOME}/.bashrc

# configure mamba
conda config --set auto_activate_base false
source ${HOME}/.bashrc
mamba update -n base --all
