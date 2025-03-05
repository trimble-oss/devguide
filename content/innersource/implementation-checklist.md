---
title: "Implementation Checklist"
layout: "single"
description: ""
group: innersource
---

<style>
  article ul {margin-left: -20px;}
  article li {list-style: none;}
</style>

You can use this checklist to ensure that you complete all of the necessary steps to InnerSource your project.

## InnerSource Roles

(see [InnerSource Roles](./innersource-roles.md))

- [ ] [Owner(s)](./innersource-roles.md) have been defined for the project and detailed in the `README.md`.
- [ ] [Trusted Committer(s)](./innersource-roles.md) have been defined for the project and detailed - in the `README.md`. There should be at least 2 Trusted Committers (which can also be owners).

## Project Information

(see [Contribution Agreements](./contribution-agreements.md))

- [ ] The general intent of the project is clearly documented in the `README.md`.
- [ ] The `README.md` contains links to the other InnerSource documents in the repository for easy navigation.

## Repository Configuration

(see [Repository Configuration](./repository-configuration.md) for more in-depth details on this)

- [ ] The repository description has a relevant description.
- [ ] The repository has the trimble-innersource label for Bitbucket or the trimble-innersource topic in GitHub.
- [ ] The repository has open read permissions for everyone.
- [ ] For Bitbucket, the repository has write permissions so that anyone can submit a pull request, this is not required for GitHub.
- [ ] The `main` and `develop` branches are protected so code cannot be committed without a Pull Request.
- [ ] The repository should be configured to auto-unapprove Pull Requests when there is a new commit against the PR.

## Contribution Agreements

(see [Contributing Agreements](./contribution-agreements.md))

- [ ] The project contains a `CODE_OF_CONDUCT.md` that references a standard Code of Conduct.
- [ ] The `CONTRIBUTING.md` contains details of how to submit a code contribution to the project. This includes any process or requirements to discuss the contribution with the project owners and submitting a pull request.
- [ ] A clear definition of done is included in the `CONTRIBUTING.md` which sets out the expectations on developers contributing to the project (e.g. unit test expectations)

## Issue Tracking and Communication

(see [Project Tracking](./project-tracking.md) and [Project Communication](./project-communication.md))

- [ ] An epic has been created within a Jira project or equivalent Issue Manager related to this repository to be used to track issues. The epic should have the label trimble-innersource.
- [ ] Details of the epic and how to log issues and feature request are included in the `CONTRIBUTING.md`.
- [ ] A communication channel is established that allows contributors and consumers to contact the owners (e.g. Google Chat group or email group). This is detailed in the `README.md`.

## Getting Started Documentation

(see [Contribution Agreements](./contribution-agreements.md) and [Project Documentation](./project-documentation.md))

- [ ] The `GETTINGSTARTED.md` contains instructions on how to build and execute the code and the tests for the project on a clean development environment.
- [ ] The `GETTINGSTARTED.md` contains the instructions on how to consume the deployed version of this code. Either basic instructions on how to call the service, or how to use the library/package depending on the type of project.

