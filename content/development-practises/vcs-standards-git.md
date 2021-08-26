---
title: VCS Standards - Git
layout: single
development: true
url: /development-practices/vcs-standards-git/
image: "/img/icons/development-practices/vcs-standards-git.svg"
---

This document is intended as a guide for code management using using version
control systems (VCS). While the terminology used in the document is for Git the
concepts may be applied to an VCS.

## Why It's Important

Ultimately it’s up to you, the project maintainer, to determine what’s most
important for your project but keep in mind that the cleaner and more organized
your project is the more likely other will contribute to it …….

## Branching and Merging

The suggested workflow for repositories is [Gitflow workflow][2] which defines a
strict branching model designed around the project release. The remote `develop`
branch is the development trunk. New feature branches and bug fix branches are
made from `develop` and these branches can be pushed to the remote repository at
any time. When they are completed, a developer should issue a merge request back
into the `develop` branch. Release candidate branches are made from `develop`,
and only bug fixes should be committed to a release candidate branch (after
being reviewed). Once the release branch is deemed stable and passes all testing
the branch will be merged into `main` and a tag with the version number will be
added. The release branch will also be merged back into `develop`. Hotfix
branches are made from the tag of the release being hotfixed.

For InnerSource repositories, it is recommended to use the [Forking
workflow][8]. This will allow the maintainer of the InnerSource repository to
not have to manage permissions for contributors of the respository.

## Squashing & Rebasing

When possible squash your commits or rebase them interactively. Minimizing the
number of commits on a feature will help keep the history clean for others.
Having a series of commit with _made compile, oops, or fixed typo_ makes history
cloudy and hard for other to follow especially when using history and tracking
tools like [git blame][3], [cherry-pick][4] and [git revert][5]. Think of a
commit as a discrete stand alone feature or bug fix. For large complex feature,
refactoring, or bug fixes don’t be afraid to have multiple commits, just be sure
they consist of logical discrete functions.

## Commit Messages

Review Chris Beams blog post on [Writing Good Commit Messages][6]. Below are
some guidelines based on Chris’s post.

### DOs

- Define a standard that works for your team and stick to it.
- Always capture Jira or any other system Id in your commit.
- Summary line should always be 72 characters or less.
- Separate summary from body with a blank line.
- Begin summary line with a capital letter.
- Write the summary line and description of what you have done in the imperative
  mode, as if you were commanding someone. Start the line with "Fix", "Add",
  "Change" instead of "Fixed", "Added", "Changed”.
- The summary should be indicative of what the commit does when applied rather
  than what you did with the code.
- Consider using pre-commit hooks to audit commit messages before a merge.

### DON'Ts

- Don’t end the summary line with a period.
- Don’t describe the code when writing body. Describe the intent and approach.
- Don’t have any lazy commit messages. For e.g: any commit labeled as “Minor
  Code changes”, “Code Review Comments”, “Code Fixes”, “Cleanup” or similar.
- Don’t mix white space changes with functional code changes.
- Don’t mix two unrelated functional changes.
- Avoid sending a large new feature in a single giant commit (Recommendation is
  to do at least one commit every day).

## General Guidelines

### DOs

- Understand how your version control system works.
- Understand how your version control system works (yes, it’s that important).
- Use merge requests or pull requests.
- Have clear commit messages.
- Include the issue number in your commit message.
- Squash and rebase (where appropriate).
- Use feature branches and use an agreed upon format.
- Include a README.md file.

### DONTs

- Push directly to `develop` or `main`.
- Have meaningless commit messages like “fixed typo”.
- Push all of your local commits to your remote.

1. [Atlassian Git workflows][1]
2. [Git source code management][7]
3. [Chris Beams post on writing good commit messages][6]

[1]: https://www.atlassian.com/git/tutorials/comparing-workflows
[2]:
  https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow
[3]: https://git-scm.com/docs/git-blame
[4]: https://git-scm.com/docs/git-cherry-pick
[5]: https://git-scm.com/docs/git-revert
[6]: https://chris.beams.io/posts/git-commit/
[7]: https://git-scm.com/
[8]:
  https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow
