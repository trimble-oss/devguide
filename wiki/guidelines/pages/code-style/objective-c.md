---
layout: page
title: Objective-C
section: code-style
permalink: /code-style/objective-c/
---

## Reference Code Standard

Follow [Google’s Objective-C Style Guide](https://google.github.io/styleguide/objcguide.xml), it will first direct you to read [Apple's Coding Guidelines](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html) and then [Google’s C++ Style Guide](https://google.github.io/styleguide/cppguide.html), don’t skip these as they complement the Style Guide in a great way.

## Exceptions to the Standard

When sharing code with C++ that uses Google’s style, use 80 character limit per line, otherwise use 100; limiting characters per line helps with code reviews.

## Implementing the Standard

Be consistent with the codebase and if source code doesn’t follow a particular style start introducing the style incrementally.

The recommended tool for Xcode is the [clang-format plugin](https://github.com/travisjeffery/ClangFormat-Xcode), you can install it through [Package Manager](http://alcatraz.io/).  For details on setting up the clang-format plugin, refer to [Appendix B: Setting up the CLang-Format Plugin](#heading=h.jxoyjazfls7h). Xcode 8+ doesn’t support plugins anymore :-/

## Appendix A: Businesses Using Language

<table>
  <tr>
    <td>Business</td>
    <td>Codebase</td>
    <td>Notes</td>
  </tr>
  <tr>
    <td>SketchUp</td>
    <td></td>
    <td>We write our code using Google’s C++ Style Guide, this is a great opportunity to use the style used by the broader Objective-C community.</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

---
### Document Revision History

| Version | Revision date | Revision description   |
|---------|---------------|------------------------|
| 1.0     | 27-Apr-2018   | Initial public release |