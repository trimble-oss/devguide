---
title: "Swift Code Style"
ShortTitle: "Swift"
layout: "single"
description: "Trimble's code style guidelines for Swift"
url: "/code-style/swift/"
image: "/img/icons/code-style/swift.svg"
headerBGColor: "#FA7343"
headerBGInvert: true
code: true
DoNotTranslateTitle: true
---

## Reference Code Standard

[Google’s Swift Style Guide](https://google.github.io/swift/), This style guide is based on Apple’s excellent Swift standard library style and also incorporates feedback from usage across multiple Swift projects within Google. It is a living document and the basis upon which the formatter is implemented.

## Exceptions to the Standard

Triple slash (///) for documentation comments is not enforced.

## Implementing the Standard

Because Swift is a new language it’s easier and less time consuming to enforce formatting in the Git pre-commit hook so that it automatically formats added and modified files, for a working example see [this repo](https://bitbucket.trimble.tools/projects/SU/repos/mobile_tools/browse).

## Appendix A: Businesses Using Language

| Business | Codebase | Notes                                                                                                    |
| :------- | :------- | -------------------------------------------------------------------------------------------------------- |
| SketchUp | Mobile   | Automatically format added or modified swift files with the swift-format tool using the pre-commit hook. |
