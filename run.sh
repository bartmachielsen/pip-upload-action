#!/bin/sh -l

# cd to repo
cd $GITHUB_WORKSPACE/$1

# install dependencies
pip3 install wheel twine
if [ "NONE" = "$2" ]
then
    echo "Skipping installation of dependencies as requested by user"
else
    pip3 install -r $2
fi

# build
python3 $3 sdist bdist_wheel

# upload
twine upload --username $4 --password $5 dist/*
