---
title: "Code Documentation"
layout: "single"
description: ""
url: "/development-practices/code-documentation"
image: "/img/icons/development-practices/code-documentation.svg"
development: true
---

## Introduction

…yes we are writing documentation on documentation…

Producing good documentation is neither easy nor cheap and many software engineers find it more difficult that producing good quality code. Please remember: "A program may be written only once, but is read many times".

## Code Documentation

Code should be self documenting, meaning that the code itself is written in a way that someone with domain knowledge and who is well versed in the programming language can understand what the code is doing. In general, if inline comments are required in the code, the code is not well structured. Where appropriate class methods should be documented with the purpose of the method, along with its inputs and outputs. Classes should always include documentation on what the class does and how to use it.

### Code Documentation Practices

- Follow general guidelines for comments per a code style corresponding to your language (C++, Java, Python, PHP etc).

Unless specified otherwise please:
- Avoid inline comments. Make your code clear and well structured.
- When appropriate document methods, their log, inputs, and outputs.
- Always document classes in the code.
- Use tools for generating documentation from source code (see Language Specific Tools).
- Use documentation that can be used by IDE’s for autocompletion.
- Consider creating Project Level Documentation using a README file. Consider including a general overview of the project, along with examples of how to use the project, etc. Consider creating a Template within your team for Project level documentation.

### Code Documentation Policies

- Documentation should be a continuous process, just like testing.
- Do systematic code reviews, including formal code reviews targeted at inspecting the documentation.

## Appendix A: Language Specific Tools

Some of the tools in use within Trimble.

| Language                  | Tool                         | Notes                                                                                                                                                                                                                                                                                  |
| ------------------------- | ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [C#](/code-style/c-sharp/)                        | Sandcastle Help File Builder | Obtains descriptive text from C# XML Documentation Comments and type information by reflecting over compiled assemblies. Compiler will raise a warning if XMLDoc comments don’t match function signature. Compiler can be configured to emit a warning if XMLDoc comments are omitted. |
| [C++](/code-style/c-plus-plus/)                       | Doxygen                      | Generates documentation from the declarations and documentation comments of your code Can visualize the relations (via dependency graphs, inheritance diagrams, and collaboration diagrams, which are all generated automatically).                                                    |
| [Java](/code-style/java/) | JavaDoc                      | Parses the declarations and documentation comments in a set of Java source files and produces a corresponding set of HTML pages that describe the public and protected classes, nested classes interfaces, constructors, methods, and fields.                                          |
| [JavaScript](/code-style/javascript/)               | JsDoc                        | Generates documentation from annotations embedded in comments in the source code.                                                                                                                                                                                                       |
| [Python](/code-style/python/)                    | Sphinx                       | The Sphinx autodoc module extracts documentation strings from python source. Documentation strings can contain reStructured Text. Additional narrative is supplied in reStructured text files. Sphinx can output HTML, PDF, ePub, LaTeX, Windows HTML Help.                             |
| [TypeScript](/code-style/typescript/)                | TypeDoc                      | Simpler more compact annotations than with JsDoc, optimised for TypeScript, uses typings directly from the TypeScript compiler.                                                                                                                                                         |

## Bibliography

- [Why do Programmers Hate Documenting?](http://web.archive.org/web/20210105080723/https://discuss.fogcreek.com/joelonsoftware1/35336.html)
- [You are what you document](https://www.ybrikman.com/writing/2014/05/05/you-are-what-you-document/)
- [Putting comments in code: the good, the bad, and the ugly](https://medium.freecodecamp.org/code-comments-the-good-the-bad-and-the-ugly-be9cc65fbf83)
