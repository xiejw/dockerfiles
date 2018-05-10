## Tensorflow Docker

### Version

1.6.0.

### Usage

    docker build -t tensorflow -f Dockerfile.tensorflow .
    mkdir ~/notebooks
    docker run --rm -it -v ~/notebooks:/notebooks -p 8888:8888 tensorflow

### Packages

Debian packages:

- `python-dev` and `build-essential`: Provides the tools for pip install.
- `ca-certificates`: Provides PEM files of CA certificates to fix
  `SSL: CERTIFICATE_VERIFY_FAILED`.

Python packages: `pandas`, `jupyter`, `notebooke`, `matplotlib`.

### Environment Variable

- `BASE_URL`: Set `c.NotebookApp.base_url`. This is useful for `nginx`.

## Keras

### Version

2.1.5 (TF backend 1.6.0)

### Usage

    docker build -t keras -f Dockerfile.keras .
    mkdir ~/notebooks
    docker run --rm -it -v ~/notebooks:/notebooks keras

