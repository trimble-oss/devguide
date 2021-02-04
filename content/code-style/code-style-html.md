---
title: "HTML Code Style"
ShortTitle: "HTML"
layout: "single"
description: "Trimble's code style guidelines for HTML"
url: "/code-style/html/"
image: "/img/icons/code-style/html.svg"
headerBGColor: "#E34F26"
headerBGInvert: true
code: true
---

## Reference Code Standard

[Google's HTML guide](https://google.github.io/styleguide/htmlcssguide.html)

The [Code Guide](https://codeguide.co/) also provides excellent guidance for developing consistent, flexible, and sustainable HTML and CSS.

## Implementing the Standard

Many IDE's provide formatting, linting and hinting support for HTML.

We recommend using [HTMLHint](https://htmlhint.com). Example `.htmlhintrc`:

```json
{
  "alt-require": true,
  "attr-lowercase": [
    "allowReorder",
    "attributeName",
    "attributeType",
    "autoReverse",
    "baseFrequency",
    "baseProfile",
    "calcMode",
    "clipPath",
    "clipPathUnits",
    "contentScriptType",
    "contentStyleType",
    "diffuseConstant",
    "edgeMode",
    "externalResourcesRequired",
    "filterRes",
    "filterUnits",
    "glyphRef",
    "gradientTransform",
    "gradientUnits",
    "kernelMatrix",
    "kernelUnitLength",
    "keyPoints",
    "keySplines",
    "keyTimes",
    "lengthAdjust",
    "limitingConeAngle",
    "markerHeight",
    "markerUnits",
    "markerWidth",
    "maskContentUnits",
    "maskUnits",
    "numOctaves",
    "onBlur",
    "onChange",
    "onClick",
    "onFocus",
    "onKeyUp",
    "onLoad",
    "pathLength",
    "patternContentUnits",
    "patternTransform",
    "patternUnits",
    "pointsAtX",
    "pointsAtY",
    "pointsAtZ",
    "preserveAlpha",
    "preserveAspectRatio",
    "primitiveUnits",
    "refX",
    "refY",
    "repeatCount",
    "repeatDur",
    "requiredExtensions",
    "requiredFeatures",
    "specularConstant",
    "specularExponent",
    "spreadMethod",
    "startOffset",
    "stdDeviation",
    "stitchTiles",
    "surfaceScale",
    "systemLanguage",
    "tableValues",
    "targetX",
    "targetY",
    "textLength",
    "viewBox",
    "viewTarget",
    "xChannelSelector",
    "yChannelSelector",
    "zoomAndPan"
  ],
  "attr-no-duplication": true,
  "attr-unsafe-chars": true,
  "attr-value-double-quotes": false,
  "attr-value-not-empty": false,
  "doctype-first": true,
  "doctype-html5": true,
  "head-script-disabled": false,
  "href-abs-or-rel": false,
  "id-class-ad-disabled": true,
  "id-class-value": false,
  "id-unique": false,
  "inline-script-disabled": false,
  "inline-style-disabled": false,
  "space-tab-mixed-disabled": true,
  "spec-char-escape": false,
  "src-not-empty": true,
  "style-disabled": false,
  "tag-pair": false,
  "tag-self-close": false,
  "tagname-lowercase": true,
  "title-require": true
}
```
