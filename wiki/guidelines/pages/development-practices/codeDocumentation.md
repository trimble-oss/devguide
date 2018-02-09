---
layout: page
title: Code Documentation
section: development-practices
permalink: /development-practices/code-documentation/
---
### Status: Final Draft

...yes we are writing documentation on documentation...

## Introduction

Producing good documentation is neither easy nor cheap and many software engineers find it more difficult that producing good quality code. Please remember: "A program may be written only once, but is read many times".

## Code Documentation

Code should be self documenting, meaning that the code itself is written in a way that someone with domain knowledge and who is well versed in the programming language can understand what the code is doing. In general, if inline comments are required in the code, the code is not well structured. Where appropriate class methods should be documented with the purpose of the method, along with it’s inputs and outputs. Classes should always include documentation on what the class does and how to use it.

### Code Documentation Practices

* Follow general guidelines for comments per a code style corresponding to your language (C++, Java, Python, PHP etc). Unless specified otherwise please:

Avoid inline comments. Make your code clear and well structured.

When appropriate document methods, their log, inputs, and outputs.

Always document classes in the code.

* Use tools for generating documentation from source code (see Language Specific Tools).

* Use documentation that can be used by IDE’s for autocompletion

* Consider creating Project Level Documentation using a README file. Consider including a general overview of the project, along with examples of how to use the project, etc.  Consider creating a Template within your team for Project level documentation.

### Code Documentation Policies

* Documentation should be a continuous process, just like testing.

* Do systematic code reviews, including formal code reviews targeted at inspecting the documentation.

## Appendix A: Language Specific Tools

Some of the tools in use within trimble.

<table>
  <tr>
    <td>Language</td>
    <td>Tool</td>
    <td>Notes</td>
  </tr>
  <tr>
    <td>Java</td>
    <td>JavaDoc</td>
    <td>Parses the declarations and documentation comments in a set of Java source files and produces a corresponding set of HTML pages that describe the public and protected classes, nested classes interfaces, constructors, methods, and fields. </td>
  </tr>
  <tr>
    <td>C#</td>
    <td>Sandcastle Help File Builder</td>
    <td>Obtains descriptive text from C# XML Documentation Comments and type information by reflecting over compiled assemblies. Compiler will raise a warning if XMLDoc comments don’t match function signature. Compiler can be configured to emit a warning if XMLDoc comments are omitted.</td>
  </tr>
  <tr>
    <td>Javascript</td>
    <td>JsDoc</td>
    <td>Generates documentation from annotations embedded in comments in the source code</td>
  </tr>
  <tr>
    <td>Typescript</td>
    <td>TypeDoc</td>
    <td>Simpler more compact annotations than with JsDoc, optimised for Typescript, uses typings directly from the Typescript compiler</td>
  </tr>
  <tr>
    <td>C++</td>
    <td>Doxygen</td>
    <td>Generates documentation from the declarations and documentation comments of your code
Can visualize the relations (via dependency graphs, inheritance diagrams, and collaboration diagrams, which are all generated automatically).</td>
  </tr>
  <tr>
    <td>Python</td>
    <td>Sphinx
</td>
    <td>The sphinx autodoc module extracts documentation strings from python source. Documentation strings can contain reStructured Text.
Additional narrative is supplied in reStructured text files.
Sphinx can output HTML, PDF, ePub, LaTeX, Windows HTML Help</td>
  </tr>
</table>
