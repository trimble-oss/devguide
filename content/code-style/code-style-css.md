---
title: "CSS Code Style"
ShortTitle: "CSS"
layout: "single"
description: "Trimble's code style guidelines for CSS"
url: "/code-style/css/"
image: "/img/icons/code-style/css.svg"
headerBGColor: "#157286"
headerBGInvert: true
code: true
---

## Reference Code Standard

[Google's CSS guide](https://google.github.io/styleguide/htmlcssguide.html#CSS)

The [Code Guide](https://codeguide.co/#css) also provides excellent guidance for developing consistent, flexible, and sustainable HTML and CSS.

### Implementing the Standard

Many IDE's provide formatting, linting and hinting support.

- [Editorconfig](https://editorconfig.org/)
- [HTMLHint](https://htmlhint.com)

We recommend linting CSS with [Stylelint](https://stylelint.io). The [stylelint-config-standard](https://github.com/stylelint/stylelint-config-standard)
ruleset enforce the common stylistic conventions found within a handful of CSS style guides.

```sh
npm install stylelint --save-dev
# or
yarn add stylelint --dev
```
