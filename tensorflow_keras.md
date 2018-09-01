# Tensorflow Docker

### Version

1.6.0.

### Usage

    docker build -t tensorflow -f Dockerfile.tensorflow .
    NOTEBOOK=~/notebooks
    mkdir $NOTEBOOK
    docker run --rm -it -v $NOTEBOOK:/notebooks -p 8888:8888 tensorflow

### Packages

Debian packages:

- `python-dev` and `build-essential`: Provides the tools for pip install.
- `ca-certificates`: Provides PEM files of CA certificates to fix
  `SSL: CERTIFICATE_VERIFY_FAILED`.

Python packages: `pandas`, `jupyter`, `notebooke`, `matplotlib`.

### Environment Variable

- `BASE_URL`: Set `c.NotebookApp.base_url`. This is useful for `nginx`.
- `PASSWORD`: Set `c.NotebookApp.password`.

# Keras Docker

### Version

2.1.5 (TF backend 1.6.0). Based on Tensorflow docker above.

### Usage

    docker build -t tensorflow -f Dockerfile.tensorflow .
    docker build -t keras -f Dockerfile.keras .
    NOTEBOOK=~/notebooks
    mkdir $NOTEBOOK
    docker run --rm -it -v $NOTEBOOK:/notebooks keras

Or run the container for the file `training.py` one-off (All related files must
be accesiable from local directory).

    NOTEBOOK=`pwd`
    docker run --rm -it -v $NOTEBOOK:/notebooks  --entrypoint="" keras python training.py
