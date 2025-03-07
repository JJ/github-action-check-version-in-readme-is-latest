# Check that the version in README is latest [![.github/workflows/test.yml](https://github.com/JJ/github-action-check-version-in-readme-is-latest/actions/workflows/test.yml/badge.svg)](https://github.com/JJ/github-action-check-version-in-readme-is-latest/actions/workflows/test.yml)

Doesn't it bother you when the example in the `README` file does not contain the
latest version of the GitHub action and you have to fix it by hand? Well, no
more! Well, a little more: you will still have to fix it by hand, but this
action with check if the example in the `README` of your github action actually
contains the latest tagged version.

To use it, just add this step and trigger:

```yaml
name: Check correct version
on:
    push:
        paths:
          - README.md

jobs:
  check_v_in_example:
    runs-on: ubuntu-latest
    name: Test version
    steps:
    - name: Check version
      uses: JJ/github-action-check-version-in-readme-is-latest@v3
```

This will only trigger when either the `README.md` file is modified, or a new
tag is added.

## How it works

This is a [fatpacked](https://metacpan.org/dist/App-FatPacker/view/bin/fatpack)
Perl script that runs from the directory the action is downloaded. You want to
make some changes, work on the [`action.src.pl`](action.src.pl) file and then
run `make` to fatpack it.

## Version history

* **v1**: First release. It didn't actually work.
* **v2**: Second release. It does work
* **v3**: This time it really works. 

## License

(c) JJ Merelo 2024, released under the [GPL V3 license](LICENSE).

