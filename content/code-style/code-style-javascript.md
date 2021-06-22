---
title: "JavaScript Code Style"
ShortTitle: "JavaScript"
layout: "single"
description: "Trimble's code style guidelines for JavaScript"
url: "/code-style/javascript/"
image: "/img/icons/code-style/javascript.svg"
headerBGColor: "#F7DF1E"
code: true
---

## Reference Code Standard

- [Google's JavaScript style guide on GitHub](https://google.github.io/styleguide/jsguide.html)

## Exceptions to the Standard

The one exception is that preexisting libraries included in your applications should not be changed to fit the standard. Hopefully you’re extending a library and able to craft the extension in a standardized format.

## Implementing the Standard

Some IDE’s provide linting support built into their package system. For command-line you’ll need to install the package with administrative/root privilege

```sh
npm install eslint eslint-config-google --save-dev
# or
yarn add eslint eslint-config-google --dev
```

Once the eslint-config-google package is installed, you can use it by specifying google in the extends section of your [ESLint configuration](http://eslint.org/docs/user-guide/configuring).

```json
{
  "extends": "google",
  "rules": {
    // Additional, per-project rules...
  }
}
```
