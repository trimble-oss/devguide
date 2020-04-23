---
layout: page
title: Versioning
section: development-practices
permalink: /development-practices/versioning/
---

## Introduction

Software changes, interface compatibility breaks, old functionality becomes 
deprecated in favor of improved implementations. With a consistent versioning 
scheme users can immediately determine whether or not an upgrade to their 
library will cause problems with compilation or linkage or if a new version of 
their end-user software might cause disruptions to their existing workflow. 
Consistency in versioning helps developers choose non-breaking changes when 
determining what changes could be backported to older maintained versions. A 
version increment denotes a step in the software life cycle. As a part of 
managing user expectations, the version increments should match the 
significance of improvements and features implemented.

## Recommended versioning scheme

Semantic versioning 2.0.0 [https://semver.org/][1], SemVer 
for short, is a de facto standard for open source libraries and utilities. It 
provides a clear distinction between versions that are:

1. Minor bugfixes or changes that do not alter the interface (patch)

2. Backwards compatible, but might deprecate some features or introduce new 
ones that do not require major adjustments from the end-user (minor)

3. Backwards incompatible, require the user of a library to modify or 
re-implement the code interfacing the library or the user of a desktop 
application to adjust their way of working with the software. (major)

For continuous deployment systems, the use of semantic versioning requires some
planning on deciding when to increment the major and minor versions. If the 
change is not considered significant, only the patch number is incremented.

A benefit of using SemVer for versioning is the [automatic merge feature][2]
 
of BitBucket that allows you to make patch-level changes in a feature branch 
off the earliest required version and have the feature branch automatically 
merged to later major and minor versions upon merging.

## Internal vs external versions

* Some versions, such as public releases and service packs, can be labelled 
separately from the used version scheme. Those versions can be referred to by 
internal and external versions (e.g. "Windows XP SP3" vs “Build 4608”).

* Git SHA1 hashes can be considered internal versions, as long as the 
repository is available.

[Semantic Versioning][1] by Tom Preston-Werner

[1]: https://semver.org/
[2]: https://confluence.atlassian.com/bitbucketserver/automatic-branch-merging-776639993.html
