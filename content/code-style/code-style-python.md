---
title: "Python Code Style"
ShortTitle: "Python"
layout: "single"
description: "Trimble's code style guidelines for Python"
url: "/code-style/python/"
image: "/img/icons/code-style/python.svg"
iconBGColor: "#3776AB"

code: true
group: "code-style"
DoNotTranslateTitle: true
---

## Reference Code Standard

The Python Software Foundation is responsible for developing and maintaining Python language standards. The Python foundation uses Python Enhancement Proposals (PEPs) to document the language and capture guidelines. Two PEPs are relevant to the topic of code style.

- **[PEP 8 -- Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008)**<br>
PEP 8 specifies the conventions used to develop the standard libraries that ship as part of a Python distribution.

- **[PEP 257 -- Docstring Conventions](https://www.python.org/dev/peps/pep-0257)**<br>
PEP 257 builds on PEP 8 to add the semantics and conventions for Python docstrings. Following these conventions enables off the shelf tools to process the docstrings.

## Exceptions to the Standard

None.

## Implementing the Standard

[Pylint](https://pylint.pycqa.org/en/latest/) is the recommended code analysis tool for verifying compliance with the PEP 8 style guide. Pylint can be run from the command-line for integrating in CI environment. There are also Pylint integrations for most Python IDEs and many text editors.

When a rule violation is the result of a conscious decision a rule can be disabled with a comment of the form

```python
# pylint: disable=no-member
```

## Sample implementation

To help enforce the standard, you can hook into Git. This can easily be applied to any language enforcement tooling.

Here’s an example using Python's `pre-commit` package:

```sh
$ pip install pre-commit
$ pre-commit install
```

- Create a file named `.pre-commit-config.yaml` in the root directory.

```yaml
# file: .pre-commit-config.yaml
repos:
  - repo: https://github.com/pycqa/pylint
    rev: pylint-2.6.0
    hooks:
      - id: pylint
        args:
          - --rcfile=.pylintrc
        verbose: true
```

## Recommended practices

It's strongly advised to write type annotated code whenever possible. The following PEP is relevant to this:

- **[PEP 484 -- Type Hints](https://www.python.org/dev/peps/pep-0484)**<br>
PEP 484 introduces type hints to Python code. It enables annotating function and variable types to improve code clarity and maintainability.

Annotated code is already checked during build time with static type checking tools. [mypy](https://mypy.readthedocs.io/en/stable/index.html) is recommended. It works like a linter, and uses type annotations of variables and functions to ensure that they are used correctly. In this way, possible problems in the code are revealed even before a program is run.

mypy can also be added to the `pre-commit-config.yaml` in the following way:

```yaml
-   repo: https://github.com/pre-commit/mirrors-mypy
    rev: ''  # Use the sha / tag you want to point at
    hooks:
    -   id: mypy
```

Just in case, conscious type checking violations can be silenced using:

```python
# type: ignore[<code>]
```


## Bibliography

- [mypy](https://mypy.readthedocs.io/en/stable/index.html)
- [PEP 8](https://www.python.org/dev/peps/pep-0008/)
- [PEP 257](https://www.python.org/dev/peps/pep-0257/)
- [PEP 484](https://www.python.org/dev/peps/pep-0484)
- [Pylint](https://pylint.pycqa.org/en/latest/)
