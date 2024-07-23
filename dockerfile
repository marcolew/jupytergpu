# Use an official NVIDIA CUDA runtime as a parent image
FROM nvidia/cuda:12.4.1-runtime-ubuntu20.04 

# Install Python and pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Install JupyterLab
RUN pip3 install jupyterlab

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run JupyterLab when the container launches
CMD ["jupyter-lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
