---
title: "Contribution Agreements"
layout: "single"
description: ""
innersource: true
---

Documentation known as the _Contributing Agreement_ which should be stored in the root of a repository or project in the case of a monorepo. Documentation should be provided in Markdown format.

Bitbucket has full support for rendering Markdown into rich text format so it is easy for potential contributors to read and learn about the project.

See [The Markdown Guide](https://www.markdownguide.org) for documentation.

A simple online Markdown editor can be found at - [https://writeme.mattstow.com/](https://writeme.mattstow.com/)

Visual Studio Code has excellent support for Markdown editing - see [their docs](https://code.visualstudio.com/docs/languages/markdown) for details.

For Visual Studio a popular [Markdown editor is available](https://marketplace.visualstudio.com/items?itemName=MadsKristensen.MarkdownEditor).

The InnerSource checklist suggested a number of useful items to consider for inclusion as part of the Contributing Agreement:

- The authoring TC’s specialties
- Community guidelines
- Code conventions
- Testing conventions
- Branching conventions
- Commit-message conventions
- Steps for creating good pull requests
- How to submit feature requests
- How to submit bug reports
- How to submit security issue reports
- How to write documentation
- Definition of done
- Dependencies
- Build-process schedule
- Sprint schedule
- Road map

The Contributing Agreement should be broken down as follows:

**`README.md`** - provides a general description of the project, its intent and who the Trusted Committer(s) are for the project.

This file is loaded by default when you open a repo in Bitbucket. The `README.md` should link to the other InnerSource files for easy navigation.

A useful interactive tool for creating a readme can be found here - [https://www.makeareadme.com/](https://www.makeareadme.com/)

Numerous examples of `README.md` files can be found on GitHub.

The `README.md` should also include details of the location and how to access the discussion forum as well as the relevant Jira project details.

**`GETTINGSTARTED.md`** - This could be optionally included to provide additional information which might not be needed in the general `README.md` for example a more detailed checklist of information which a contributor needs to know in order to provide a useful contribution - technical details of how the project is structured, how to run tests etc.

**`CONTRIBUTING.md`** - provides information on how to submit a pull request, who to assign the pull request to - (i.e. the Trust Committer(s) for the project.

**`CODEREVIEW.md`** - (optional file - this information could be included in `CONTRIBUTING.md`) should contain information as to how a pull request is evaluated for this project - what coding standards are required, expectations in terms of test coverage for unit tests, whether integration tests are required, what kind of turnaround time to expect for code review etc.

**`HELPWANTED.md`** - (optional file) a list of "most wanted" features for which a project would like to invite external contributions

**`CODE_OF_CONDUCT.md`** - (required) information as to how a contributor should treat a reviewer of their work and expectations of what a contributor should expect from their reviewer.

The Organization for Ethical Source have [a good Code of Conduct example](https://github.com/EthicalSource/contributor_covenant/blob/release/CODE_OF_CONDUCT.md).
