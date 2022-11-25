---
title: "Objective-C Code Style"
ShortTitle: "Objective-C"
layout: "single"
description: "Trimble's code style guidelines for Objective-C"
url: "/code-style/objective-c/"
image: "/img/icons/code-style/objective-c.svg"
headerBGColor: "#888"
headerBGInvert: true
code: true
DoNotTranslateTitle: true
---

## Reference Code Standard

Follow [Google’s Objective-C Style Guide](https://github.com/google/styleguide/blob/gh-pages/objcguide.md), it will first direct you to read [Apple's Coding Guidelines](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html) and then [Google’s C++ Style Guide](https://google.github.io/styleguide/cppguide.html), don’t skip these as they complement the Style Guide in a great way.

## Exceptions to the Standard

When sharing code with C++ that uses Google’s style, use 80 character limit per line, otherwise use 100; limiting characters per line helps with code reviews.

## Implementing the Standard

Be consistent with the codebase and if source code doesn’t follow a particular style start introducing the style incrementally.
