---
title: "C Code Style"
ShortTitle: "C"
layout: "single"
description: "Trimble's code style guidelines for C"
url: "/code-style/c/"
image: "/img/icons/code-style/c.svg"
headerBGColor: "#A8B9CC"
code: true
---

In order to keep an easy-to-read, consistent and aesthetically pleasing look to the Trimble code, the following coding style guide is advised.

## Reference Code Standard

- [Linux Kernel Style Guide](https://www.kernel.org/doc/html/latest/process/coding-style.html)

  - Concise
  - Covers common C issues: portability, typedefs, gotos and pointer usage

## Exceptions to the Standard

None. Any further exceptions that would benefit a project should be documented along with a rationale for the exception.

## Implementing and enforcing the Standard

| Tools/Procedures                                             | Type       | Notes                                         |
| ------------------------------------------------------------ | ---------- | --------------------------------------------- |
| [PC-lint Plus](https://www.gimpel.com/)                      | Commercial | Checks MISRA C automotive guidelines          |
| [clang-format](https://clang.llvm.org/docs/ClangFormat.html) | Free       | Formats source code according to style guide. |