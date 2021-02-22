---
title: "Project Documentation"
layout: "single"
description: ""
innersource: true
---

## Why provide documentation?

- Organizational backbone of your project
- Helps your consumers and contributors
- Succeed with your code
  - To be self-sufficient
  - To give further feedback
- You want people to use your code and to contribute to it

## Reasons People Won't Use Your Code

- They don't know why your project exists
- They can't figure out how to install your code
- They can't figure out how to use your code

## Project documentation

Because you want to promote both the consumption and contribution of your software, the documentation guidelines should be split between these two type of personas.
We recommend to storing all the documentation files in BitBucket, in the Markdown format, so it is closer to the code it documents.
As Markdown format is not appropriate for certain cases, (e.g. a sequence diagram), we recommend using other tools (e.g. Miro) and adding a link into the Markdown file.

### Consumer

- `README.md`:
  part of the [InnerSource documentation](./introduction.md).
- `GETTINGSTARTED.md`:
  part of the [InnerSource documentation](./introduction.md).
- Sample code:
  an example of what your project would normally be used for with instructions about how to use the software (installation, startup, etc). It might be part of the getting started document if short, or linked to from getting started if a longer description is needed.
- Change log
- Reference documentation:
  full documentation of the public API, generated from code.
- FAQ: an optional file, which might be created step by step, based on the feedback, questions and suggestions that don't fit elsewhere.

### Contributor

- `CONTRIBUTING.md`:
  part of the [InnerSource documentation](./introduction.md).
- Architecture documentation: document the architecture of the project.
- FAQ: an optional file, which might be created step by step, based on the feedback, questions and suggestions that don't fit elsewhere.

## References

- https://www.writethedocs.org/guide/writing/beginners-guide-to-docs/#why-write-docs
- https://medium.com/capital-one-tech/art-of-open-source-documentation-5b8b3f5b0ab
- https://www.writethedocs.org/guide/writing/beginners-guide-to-docs/#why-write-docs
- https://opensource.googleblog.com/2018/10/building-great-open-source-documentation.html
