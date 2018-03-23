# Tensorflow

## Version 

1.6.0.

# Usage

    docker build -t tensorflow -f Dockerfile.tensorflow .
    mkdir ~/notebooks
    docker run --rm -it -v ~/notebooks:/notebooks -p 8888:8888 tensorflow

# Packages

- `ca-certificates`: Provides PEM files of CA certificates to fix 
  `SSL: CERTIFICATE_VERIFY_FAILED`. 

- `python-dev` and `build-essential`: Provides the tools for pip install.
