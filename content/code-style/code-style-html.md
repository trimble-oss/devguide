---
title: "HTML Code Style"
ShortTitle: "HTML"
layout: "single"
description: "Trimble's code style guidelines for HTML"
url: "/code-style/html/"
image: "/img/icons/code-style/html.svg"
code: true
group: "code-style"

iconBGColor: "#E34F26"
---

## Reference Code Standard

- [Google's HTML guide](https://google.github.io/styleguide/htmlcssguide.html)
- The [Code Guide](https://codeguide.co/) also provides excellent guidance for developing consistent, flexible, and sustainable HTML.

## Implementing the Standard

We recommend using [HTMLHint](https://htmlhint.com). You can install this as [a plugin for your IDE](https://htmlhint.com/docs/user-guide/integrations/editor) or [for the command-line:](https://htmlhint.com/docs/user-guide/getting-started)

Example `.htmlhintrc`:

```json
{
  "alt-require": true,
  "attr-no-duplication": true,
  "attr-unsafe-chars": true,
  "attr-value-double-quotes": false,
  "attr-value-not-empty": false,
  "doctype-first": true,
  "doctype-html5": true,
  "head-script-disabled": false,
  "href-abs-or-rel": false,
  "html-lang-require": true,
  "id-class-ad-disabled": true,
  "id-class-value": false,
  "id-unique": false,
  "inline-script-disabled": false,
  "inline-style-disabled": false,
  "spec-char-escape": false,
  "src-not-empty": true,
  "style-disabled": false,
  "tag-pair": false,
  "tag-self-close": false,
  "tagname-lowercase": true,
  "title-require": true
}
```
