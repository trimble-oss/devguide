---
layout: page
title: C++
section: code-style
permalink: /code-style/cpp/
---

**_Status: Final Draft_**

In order to keep an easy-to-read, consistent and aesthetically pleasing look to the Trimble code, the following coding style guide is advised.

# Reference Code Standard

* Google C++ Style Guide - [https://google.github.io/styleguide/cppguide.html](https://google.github.io/styleguide/cppguide.html)

    * Modern

    * Provides good rationale for decisions, including even counter-arguments

    * Exceptions to the code style allowed to maintain local consistency in existing code

## Exceptions to the Standard

None. Exceptions that would benefit a specific project should be documented along with a rationale for the exception.

# Implementing and enforcing the Standard

<table>
  <tr>
    <td>Tools/Procedures</td>
    <td>Type</td>
    <td>In Use By</td>
    <td>Notes</td>
  </tr>
  <tr>
    <td>cpplint.py</td>
    <td>Open source</td>
    <td>Tekla</td>
    <td>Validates Google code style. It can be modified to account for any exceptions we add to the original standard.</td>
  </tr>
  <tr>
    <td>SonarQube</td>
    <td>Free (?) and Commercial</td>
    <td>Tekla</td>
    <td>Continuous Inspection, centralization of quality, DevOps integration, detection of tricky issues.
</td>
  </tr>
  <tr>
    <td>clang-format</td>
    <td>Free</td>
    <td>Tekla</td>
    <td>Formats souce code according to style guide.</td>
  </tr>
  <tr>
    <td>Peer reviews</td>
    <td></td>
    <td>SketchUp</td>
    <td>Validates of code style, code quality </td>
  </tr>
</table>


# Appendix A: Businesses Using Language

<table>
  <tr>
    <td>Business</td>
    <td>Codebase</td>
    <td>Notes</td>
  </tr>
  <tr>
    <td>SketchUp</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Tekla</td>
    <td>Structures</td>
    <td>SonarQube as a  style enforcer</td>
  </tr>
</table>


# Appendix B: Recommended Reading

* [Boost Library Req and Guidelines](http://www.boost.org/development/requirements.html)

    * Good documentation of what goes into setting up a Boost library project. Contains links to other documents and references to books.
