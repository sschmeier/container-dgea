FROM continuumio/miniconda3

RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge

RUN conda update -n base -c defaults conda

RUN conda install --yes r-sleuth=0.30 bioconductor-rhdf5lib=1.4 bioconductor-rhdf5=2.26.2 r-wasabi=1.0.1 bioconductor-edger=3.24.3 bioconductor-deseq2=1.22.1 bioconductor-csaw=1.16.1 bioconductor-tximport=1.12.1 bioconductor-ihw=1.10.1 bioconductor-biocparallel r-readr

RUN conda clean --index-cache --tarballs --packages --yes
