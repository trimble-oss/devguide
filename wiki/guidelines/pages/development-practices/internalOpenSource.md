---
layout: page
title: Internal Open Source
section: development-practices
permalink: /development-practices/internal-open-source/
---

## Background
This document is intended to serve as a guide for best practices when creating 
open shareable software for internal Trimble consumption. This document 
focuses on the documentation, process, and social aspects that exist outside of
your project's code. For external projects some of this information can be 
leveraged but the [Trimble Open Source Strategy and Policy][1] should be 
reviewed for licensing and legal issues when consuming and distributing code
outside of Trimble

[1]:https://sites.google.com/a/trimble.com/trimble-open-source/oss-policy

## DO's
* Create a README (in restructuredtext or markdown) - what does your code do,
  why would someone want to use it
* Add a license - the code should be protected if it makes it out into the wild
* Have a contributing guide - if someone want's to add a feature or fix a bug
  how do they do it
* Have an issue tracking system that others can easily access - people need to
  know what works and what known issues there are
* Include a slack channel or user group - if I need help where should I look
  or ask
* Encourage other to contribute instead of making changes based on requests -
  this doesn’t have to be code. It could be spell checking, code review,
  documentation.

## DONT's
* Have the user run 20 commands to get your program in running - the longer it
  takes to get running the quicker people will abandon it
* Have your documentation in a separate system - use things like Markdown and
  Restructuredtext when possible to tightly couple the code and documentation.
  If I have to access a separate system I will become disinterested.
* Belittle people wanting to contribute to your project - everybody can
  contribute something small or large. By giving feedback you are making 
  them a better developer and moving your project forward.
* Ignore pull requests or new issues - people need to know you are engaged and
  actively maintain your project otherwise they may think the project has 
  been abandoned

## Considerations
* Include automated tests - this allows contributors to know they haven’t
  created any regression bugs
* Use CI to check commits and deploy releases - when it makes sense
* **HAVE FUN WITH IT!**

---
### Document Revision History

| Version | Revision date | Revision description   |
|---------|---------------|------------------------|
| 1.0     | 27-Apr-2018   | Initial public release |