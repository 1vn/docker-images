#!/bin/bash
source /vpy/bin/activate
cd /Pillow
make clean
LIBRARY_PATH=/lib:/usr/lib make install-coverage
pytest -vx --cov PIL --cov-report term Tests
