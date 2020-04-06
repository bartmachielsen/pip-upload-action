#!/bin/sh -l

# cd to repo
cd $GITHUB_WORKSPACE/$1

# install dependencies
pip3 install wheel twine
pip3 install -r $2

# test
python3 -m unittest

# build
python3 $3 sdist bdist_wheel

# upload#
twine upload -u $4 -p $5 dist/*
