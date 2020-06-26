# Pip Upload

Github action that builds &amp; uploads python package to pypi

# Author

[onichandame](https://github.com/onichandame)

# Example Usage

edit `.github/workflows/pip-upload.yml`

add content

```yaml
name: Publish
on:
  push:
    branches:
      - master
jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - name: Prepare repo
        uses: actions/checkout@master
      - name: Test
        uses: onichandame/python-test-action@master
      - name: Upload
        uses: onichandame/pip-upload-action@master
        with:
          username: '__token__'
          password: ${{ secrets.PIP_PASSWORD }}
```

For those who are not familiar with Github secrets, see [this](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets#using-encrypted-secrets-in-a-workflow).

For those who are not familiar with pip token, see [this](https://pypi.org/help/#apitoken). It is highly recommended to use pip token for authorisation.

# Advancecd Usage

Some optional parameters can be specified in addition of the username and passowrd.

- **path**: the same as the *path* passed to actions/checkout
- **deps_list**: the file containing dependency list of the package. default to requirements.txt
- **setup**: the setup script. default to setup.py
