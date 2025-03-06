---
title: "CSS Code Style"
ShortTitle: "CSS"
layout: "single"
description: "Trimble's code style guidelines for CSS"
url: "/code-style/css/"
image: "/img/icons/code-style/css.svg"
iconBGColor: "#639"
code: true
group: "code-style"
---

## Reference Code Standard

- [Google's CSS guide](https://google.github.io/styleguide/htmlcssguide.html#CSS)

## Implementing the Standard

We recommend linting with [Stylelint](https://stylelint.io) with either the [stylelint-config-standard](https://github.com/stylelint/stylelint-config-standard) (for CSS) or [stylelint-config-standard-scss](https://github.com/stylelint/stylelint-config-standard-scss) (for SCSS).

These rulesets enforce common stylistic conventions found within many popular style guides.

Check out the [Stylelint configuration](https://github.com/trimble-oss/devguide/blob/main/stylelint.config.mjs) used in this guide as an example.
