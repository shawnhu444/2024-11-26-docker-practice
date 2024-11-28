#author Shawn hu
FROM quay.io/jupyter/minimal-notebook:2024-11-26
COPY conda-linux-64.lock /tmp/conda-linux-64.lock
RUN mamba update --quiet --file /tmp/conda-linux-64.lock \
    && mamba clean --all -y -f \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"

#RUN conda install -y pandas=2.1.2 \
#   scikit-learn=1.3.2








