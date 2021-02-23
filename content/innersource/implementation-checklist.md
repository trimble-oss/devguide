---
title: "Implementation Checklist"
layout: "single"
description: ""
innersource: true
---

<style>
  article ul {margin-left: -20px;}
  article li {list-style: none;}
</style>

You can use this checklist to ensure that you complete all of the necessary steps to InnerSource your project.

## InnerSource Roles

(see [InnerSource Roles](/innersource/innersource-roles/))

- [ ] [Owner(s)](/innersource/innersource-roles/) have been defined for the project and detailed in the `README.md`.
- [ ] [Trusted Committer(s)](/innersource/innersource-roles/) have been defined for the project and detailed - in the `README.md`. There should be at least 2 Trusted Committers (which can also be owners).

## Project Information

(see [Contribution Agreements](/innersource/contribution-agreements))

- [ ] The general intent of the project is clearly documented in the `README.md`.
- [ ] The `README.md` contains links to the other InnerSource documents in the repository for easy navigation.

## Repository Configuration

(see [Repository Configuration](/innersource/repository-configuration))

- [ ] The repository description has a short description including the owner details.
- [ ] The repository has the trimble-innersource label.
- [ ] The repository has open read permissions for everyone.
- [ ] The repository has write permissions so that anyone can submit a pull request.
- [ ] The master and develop branches are protected so code cannot be committed without a Pull Request.
- [ ] The auto-unapprove setting for the repository is set to ‘On’.

## Contribution Agreements

(see [Contributing Agreements](/innersource/contribution-agreements/))

- [ ] The project contains a `CODE_OF_CONDUCT.md` that references a standard Code of Conduct.
- [ ] The `CONTRIBUTING.md` contains details of how to submit a code contribution to the project. This includes any process or requirements to discuss the contribution with the project owners and submitting a pull request.
- [ ] A clear definition of done is included in the `CONTRIBUTING.md` which sets out the expectations on developers contributing to the project (e.g. unit test expectations)

## Issue Tracking and Communication

(see [Project Tracking](/innersource/project-tracking) and [Project Communication](/innersource/project-communication/))

- [ ] An epic has been created within a JIRA project related to this repository to be used to track issues. The epic should have the label trimble-innersource.
- [ ] Details of the epic and how to log issues and feature request are included in the `CONTRIBUTING.md`.
- [ ] A communication channel is established that allows contributors and consumers to contact the owners (e.g. Google Chat group or email group). This is detailed in the `README.md`.

## Getting Started Documentation

(see [Contribution Agreements](/innersource/contribution-agreements) and [Project Documentation](/innersource/project-documentation/))

- [ ] The `GETTINGSTARTED.md` contains instructions on how to build and execute the code and the tests for the project on a clean development environment.
- [ ] The `GETTINGSTARTED.md` contains the instructions on how to consume the deployed version of this code. Either basic instructions on how to call the service, or how to use the library/package depending on the type of project.

