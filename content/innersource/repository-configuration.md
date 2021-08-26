---
title: "Repository Configuration"
layout: "single"
description: ""
innersource: true
---

Follow these guidelines to configure the Bitbucket repository for your project correctly to prepare it for InnerSource.

- Code should be in a clearly named Bitbucket repository in an appropriate project.

- The repository should have Write permissions enabled as without this Pull Requests cannot be created. You can configure permissions from the Repository Permissions screen.

- The description of the repository should include what the project is about and the contact details for the Trusted Committer(s). The description can be set from the repository settings screen.

- The `main` branch and, if applicable, the develop branch **MUST** be protected so code cannot be committed without a Pull Request. You can configure this from the Branch Permissions settings screen.

- The repository should have the trimble-innersource label against it. Labels can be added at the bottom of the home screen for a BitBucket repository.

- A default reviewer can also be configured for convenience. Default reviewers should always include the Trusted Committer.

- Reviewers should always be asked to approve a Pull Request before being able to merge to develop or `main`. This can be configured from the auto-unapprove configuration screen.

Active Pull Requests against a project can be managed in BitBucket from the dashboard by clicking on the  ![image alt text](/img/innersource/pull-request.png) icon on the left-hand side.
