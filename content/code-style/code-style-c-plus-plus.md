---
title: "C++ Code Style"
ShortTitle: "C++"
layout: "single"
description: "Trimble's code style guidelines for C++"
url: "/code-style/c-plus-plus/"
image: "/img/icons/code-style/c-plus-plus.svg"
headerBGColor: "#00599c"
headerBGInvert: true
code: true
---

## Reference Code Standard

Follow Google's guidelines which includes coding conventions and naming style:

- [C++ Coding Conventions](https://docs.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions)

## Exceptions to the Standard

None. Exceptions that would benefit a specific project should be documented along with a rationale for the exception.

## Implementing the Standard

| Tools/Procedures                                                      | Type        | Notes                                                                                                          |
| --------------------------------------------------------------------- | ----------- | -------------------------------------------------------------------------------------------------------------- |
| [cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint) | Open Source | Validates Google code style. It can be modified to account for any exceptions we add to the original standard. |
| [Visual Studio 2022](https://visualstudio.microsoft.com/downloads)    | Commercial  | IntelliSense Code Linter for C++ evaluates as you type                                                         |
| [ReSharper C++](https://www.jetbrains.com/resharper-cpp/)             | Commercial  | IntelliSense Code Linter for C++ evaluates as you type                                                         |
| [clang-format](https://clang.llvm.org/docs/ClangFormat.html)          | Free        | Formats source code according to style guide.                                                                  |

## Recommended Reading

- [Boost Library Req and Guidelines](https://www.boost.org/development/requirements.html)

  - Good documentation of what goes into setting up a Boost library project. Contains links to other documents and references to books.
