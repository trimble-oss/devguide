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

In order to keep an easy-to-read, consistent and aesthetically pleasing look to the Trimble code, the following coding style guide is advised.

## Reference Code Standard

- [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)

  - Modern
  - Provides good rationale for decisions, including even counter-arguments
  - Exceptions to the code style allowed to maintain local consistency in existing code

### Exceptions to the Standard

None. Exceptions that would benefit a specific project should be documented along with a rationale for the exception.

### Implementing and enforcing the Standard

| Tools/Procedures | Type                       | In Use By | Notes                                                                                                          |
| ---------------- | -------------------------- | --------- | -------------------------------------------------------------------------------------------------------------- |
| cpplint.py       | Open Source                | Tekla     | Validates Google code style. It can be modified to account for any exceptions we add to the original standard. |
| SonarQube        | Open Source and Commercial | Tekla     | Continuous Inspection, centralization of quality, DevOps integration, detection of tricky issues.              |
| clang-format     | Free                       | Tekla     | Formats source code according to style guide.                                                                  |
| Peer reviews     |                            | SketchUp  | Validates of code style, code quality.                                                                         |

### Appendix A: Businesses Using Language

| Business | Codebase   | Notes                         |
| -------- | ---------- | ----------------------------- |
| SketchUp |            |                               |
| Tekla    | Structures | SonarQube as a style enforcer |

### Appendix B: Recommended Reading

- [Boost Library Req and Guidelines](https://www.boost.org/development/requirements.html)

  - Good documentation of what goes into setting up a Boost library project. Contains links to other documents and references to books.
