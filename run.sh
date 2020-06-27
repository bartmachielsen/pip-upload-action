#!/bin/sh -l

# cd to repo
REPO=$GITHUB_WORKSPACE/$1
cd $REPO
echo current directory $REPO

# install dependencies
echo installing packaging tools
pip3 install wheel twine
if [ "NONE" = "$2" ]
then
    echo "Skipping installation of dependencies as requested by user"
else
  echo installing dependencies in $2
    pip3 install -r $2
fi

# build
echo bundling package
python3 $3 sdist bdist_wheel

# upload
echo uploading package
twine upload --username $4 --password $5 dist/*
