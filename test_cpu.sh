#!/bin/sh -e

cd chainer
python setup.py install

pip install nose coverage
nosetests -a '!gpu' --with-coverage --cover-branches --cover-package=chainer
coverage xml -i
