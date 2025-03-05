---
title: "CSS Code Style"
ShortTitle: "CSS"
layout: "single"
description: "Trimble's code style guidelines for CSS"
url: "/code-style/css/"
image: "/img/icons/code-style/css.svg"
iconBGColor: "#157286"
code: true
group: "code-style"
---

## Reference Code Standard

[Google's CSS guide](https://google.github.io/styleguide/htmlcssguide.html#CSS)

The [Code Guide](https://codeguide.co/#css) also provides excellent guidance for developing consistent, flexible, and sustainable CSS.

## Implementing the Standard

Many IDE's provide formatting, linting and hinting support.

- [EditorConfig](https://editorconfig.org/)
- [Stylelint](https://stylelint.io)

We recommend linting CSS with [Stylelint](https://stylelint.io). The [stylelint-config-standard](https://github.com/stylelint/stylelint-config-standard)
ruleset enforce the common stylistic conventions found within a handful of CSS style guides.

```sh
npm install stylelint stylelint-config-standard --save-dev
# or
yarn add stylelint stylelint-config-standard --dev
```

You should have a `.stylelintrc` file in your project's root. Example:

```json
{
  "extends": ["stylelint-config-standard"],
  "rules":
    {
      // Additional, per-project rules...
    },
}
```

You may find it useful to add a `.styleintignore` file to your project's root so linting is not run on minified and other file types. Example:

```txt
node-modules/
*.min.css
*.html
*.svg
```
