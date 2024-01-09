# Choose the base image
FROM tensorflow/tensorflow:latest

# Install JupyterLab, NumPy, and Matplotlib
RUN pip install jupyterlab numpy matplotlib pandas SciPy

# Set the working directory in the container
WORKDIR /workfile

# Expose the port JupyterLab will use
EXPOSE 6688

# Start JupyterLab
CMD ["jupyter", "lab", "--port=6688", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]
