---
title: "Introduction to InnerSource"
menuTitle: "Introduction"
layout: "single"
description: "Open Source has brought a lot of advantages to software development, such as transparency, collaboration, communication, etc."
innersource: true
aliases:
  - "/innersource/"
---

Open Source has brought a lot of advantages to software development, such as transparency, collaboration, communication, etc. InnerSource is an attempt for us to bring these advantages into our internal development by adopting the practices and culture of Open Source.

> To understand the appeal of InnerSource project management, consider what has made open source software development so successful:
>
> - Programmers share their work with a wide audience, instead of just with a manager or team. In most open source projects, any‐ one in the world is free to view the code, comment on it, learn new skills by examining it, and submit changes that they think will improve it or customize it to their needs.
> - New code repositories (branches) based on the project can be made freely, so that sites with unanticipated uses for the code can adapt it. There are usually rules and technical support for remerging different branches into the original main branch.
> - People at large geographical distances, at separate times, can work on the same code or contribute different files of code to the same project.
> - Communication tends to be written and posted to public sites instead of shared informally by word of mouth, which provides a history of the project as well as learning opportunities for new project members.
> - Writing unit tests becomes a key programming task. A “unit test” is a small test that checks for a particular, isolated behavior such as rejecting incorrect input or taking the proper branch under certain conditions. In open source and InnerSource, testing is done constantly as changes are checked in, to protect against failures during production runs.

> InnerSource differs from classic open source by remaining within the view and control of a single organization. The “openness” of the project extends across many teams within the organization. This allows the organization to embed differentiating trade secrets into the code without fear that they will be revealed to outsiders, while benefiting from the creativity and diverse perspectives contributed by people throughout the organization.

<!--
Oram, A (2015) **Getting Started With InnerSource.** O'Reilly Media.
Get your free copy [here](https://www.oreilly.com/programming/free/getting-started-with-innersource.csp)
-->

## Implementing the Guidelines

You can find the detailed guidelines on implementing the various aspects of InnerSource in this section of the Developer Guidelines website. Additionally an [implementation checklist](/innersource/implementation-checklist/) to help guide you through the steps is also available. In summary the following steps should be taken to prepare your project for InnerSource:

1. Define the Owner(s) and Trusted Committer(s) for your project, following the [InnerSource Roles guidance](/innersource/innersource-roles/).

2. Configure your repository to allow InnerSource contributions correctly. Follow the guidance on [repository configuration](/innersource/repository-configuration/).

3. Create the Contribution Agreement for the project which sets the ground rules for how people can contribute to the project. Follow the specific guidance on [creating the Contribution Agreement](/innersource/contribution-agreements/).

4. Create and maintain the documentation for the project - ensuring documentation in the repository is kept up to date - particularly including details of the current Trusted Committer if the role is rotated. Follow the guidance on [project documentation](/innersource/project-documentation/).

5. Set up a method of communication for existing contributors, consumers and people who want to contribute. Follow the guidance on [project communication](/innersource/project-communication/).

6. Setup a method of project tracking to allow people to report and track issues/suggestions for your project. Follow the guidance on [project tracking](/innersource/project-tracking/).

Remember to check out the [implementation checklist](/innersource/implementation-checklist/) for more detailed steps and the rest of this section for more specific detail on the different InnerSource concepts.

## Resources

- [InnerSource Commons Checklist](https://innersourcecommons.org/learn/books/understanding-the-innersource-checklist/) - A free PDF by PayPal that describes ways to adopt InnerSource
- [InnerSource Checklist Summary](https://github.com/commonality/generator-community/wiki/InnerSource-checklist)
- Three-part series on InnerSource from Salesforce
  - [Inner Sourcing: What’s this?](https://engineering.salesforce.com/inner-sourcing-whats-this-ef2220ae59ec)
  - [Inner Sourcing: The Mechanics](https://engineering.salesforce.com/inner-sourcing-the-mechanics-c0b1421230fd)
  - [Inner Sourcing: The Ups and Downs](https://engineering.salesforce.com/inner-sourcing-the-ups-and-downs-3d443d5417b9)

