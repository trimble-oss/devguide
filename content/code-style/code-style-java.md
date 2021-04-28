---
title: "Java Code Style"
ShortTitle: "Java"
layout: "single"
description: "Trimble's code style guidelines for Java"
url: "/code-style/java/"
image: "/img/icons/code-style/java.svg"
headerBGColor: "#007396"
headerBGInvert: true
code: true
---

## Reference Code Standard

- [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html)

## Exceptions to the Standard

NOTE: The following exceptions are CEC exceptions, but I think this was a matter of someone’s personal preference and not a case of it being better for any (practical) reason.

- Line Length: changed to 120 from 100 columns.
- Indentation:
  - Offset: changed from 2 spaces to 4 spaces.
  - Case statement: from 2 spaces to 0 spaces.
  - Array Initialization: 4 spaces from 2 spaces

## Implementing the Standard

- [CEC Checkstyle](https://bitbucket.trimble.tools/projects/CIV/repos/static-code-analysis-config/browse/checkstyle/checkstyle.xml)
- [Google Checkstyle](https://github.com/checkstyle/checkstyle/blob/master/src/main/resources/google_checks.xml)
- [Installation of Checkstyle in IntelliJ and Eclipse](https://github.com/HPI-Information-Systems/Metanome/wiki/Installing-the-google-styleguide-settings-in-intellij-and-eclipse)

## Businesses Using Language

| Business              | Codebase              | Notes |
| --------------------- | --------------------- | ----- |
| CEC                   | APIs & Backend        |
| FSM                   | Oculus                |
| TPaaS                 | Platform as a Service |
| Connect?              |                       |
| Trimble Rail (Nexala) | Backend               |
