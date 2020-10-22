FROM python:3-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        texlive \
        texlive-latex-extra \
        dvipng \
        cm-super-minimal \
        gcc \
        gfortran \
        python3-dev \
        libopenblas-dev \
        liblapack-dev \
        cython3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN python -m pip install -U pip && \
    python -m pip install \
        numpy \
        scipy \
        matplotlib \
        pandas \
        sympy \
        seaborn
