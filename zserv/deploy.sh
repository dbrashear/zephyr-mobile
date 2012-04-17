PYTHON=${PYTHON:-python}
export PYTHONUSERBASE=${1:-/mit/zmobile}

cd "$(dirname ${BASH_SOURCE[0]})"

(
    $PYTHON setup.py install --user --optimize=1
)

(
    cd python-zephyr
    $PYTHON setup.py install --user --optimize=1
)

(
    easy_install -U -O1 --user argparse
)

