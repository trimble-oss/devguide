---
title: "Repository Configuration"
layout: "single"
description: ""
innersource: true
hideToc: true
---

Follow these guidelines to configure the repository for your project correctly to prepare it for InnerSource.

- Code should be in a clearly named git repository in a project in an appropriate source control environment such as Bitbucket or Github.

- For BitBucket, the repository should have Write permissions enabled as without this Pull Requests cannot be created. You can configure permissions from the Repository Permissions screen. This is not needed to enable Pull Requests in Github.

- The description of the repository should illustrate what the project is about. The description can be set from the repository settings screen in Bitbucket or in Github in the Edit repository details dialog which can be accessed by clicking the cog in the About panel on the homepage for the repository.

- The repository should be a README.md file which contains the names and contact details for the Trusted Committer(s)

- The `main` branch and, if applicable, the `develop` branch **MUST** be protected so code cannot be committed without a Pull Request. You can configure this from the Branch Permissions settings screen in Bitbucket or in Github you can set up branch protection rules from the repository settings screen in the Branches section under Code and automation.

- The repository should have the `trimble-innersource` label against it. Labels can be added at the bottom of the home screen for a BitBucket repository. In Github you can set this as a topic against the repository from the Edit repository details dialog.

- A default reviewer can also be configured for convenience. Default reviewers should always include a Trusted Committer. 
 
    In Github you can configure default reviewers using a `CODEOWNERS` file in the repository. See [About code owners](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners) in the Github documentation for configuration details.
    
    You can also use `CODEOWNERS` files in Bitbucket with a plugin - see [configuring code owners](codeowners-configuration.md) for details.

- Reviewers should always be asked to approve a Pull Request before being able to merge to develop or `main`. 

    This can be configured from the auto-unapprove configuration screen in Bitbucket or for Github configure a branch protection rule to require a pull request before merging and check the option 'Dismiss stale pull request approvals when new commits are pushed'


