---
layout: page
title: Code Review
section: development-practices
permalink: /development-practices/code-review/
---
### Status: Final Draft

Rationale
* Catch bugs
* Spread knowledge of the code base throughout the team
* Expose everyone to different approaches

## Best Practices

### Review before merging upstream
Merging to the upstream branch before review makes it too easy for code to slip through unreviewed. Once other developers have started to build on a questionable design it is much harder to change.

### Review all code
No code is too short or too simple. If you review everything then nothing gets missed. What’s more, it makes it part of the process, a habit and not an afterthought.

### Everyone should code review
The more experienced may well spot more bugs, and that’s important. But more important is maintaining a positive attitude to code review in general and that means avoiding any ‘Us vs. Them’ attitude, or making reviewing code burdensome for someone.

### Let automated tools do the work when possible
If is inefficient to argue over code style and formatting issues. There are plenty of tools which can consistently highlight those things. Ensuring that the code is correct, understandable and maintainable is what’s important.

### Limit a review to fewer than 400 lines of code at a time
A study has revealed that beyond 400 LOC the ability to find defects diminishes. The same research shows that when the inspection rate is faster than 500 LOC per hour results in a significant drop in the number of defects found. A reviewer’s effectiveness also falls after an hour of concentrated effort.

### Authors should provide context for a review
Authors should annotate code before the review occurs because annotations guide the reviewer through the changes, showing which files to look at first and defending the reason behind each code modification. Annotations should be directed at other reviewers to ease the process and provide more depth in context.

### Use a Checklist
A checklist helps to catch omissions which are one of the hardest things to catch in a review. A checklist assures that the review captures mistakes a  team tends to repeat. The list should be updated over time to add repeated mistakes and remove ones the team has learned not to make. Appendix A contains a sample checklist

## Appendix A: Code Review Checklist
### General
* Does the code work? Does it perform its intended function, the logic is correct etc.
* Is all the code easily understood?
* Does it conform to your agreed coding conventions? These will usually cover location of braces, variable and function names, line length, indentations, formatting, and comments.
* Is there any redundant or duplicate code?
* Is the code as modular as possible?
* Can any global variables be replaced?
* Is there any commented out code?
* Do loops have a set length and correct termination conditions?
* Can any of the code be replaced with library functions?
* Can any logging or debugging code be removed?

### Security
* Are all data inputs checked (for the correct type, length, format, and range) and encoded?
* Where third-party utilities are used, are returning errors being caught?
* Are output values checked and encoded?
* Are invalid parameter values handled?

### Internationalization
* Is parsing and formatting using discipline specific libraries?
* Is translation supported? Resources that need translation must be stored in a format that can be sent to translators.
* Can the translator control noun verb order?
* Are resources that need translation embedded in the code? If so they need to be extracted to a resource file.

### Documentation
* Do comments exist and describe the intent of the code?
* Are all functions commented?
* Is any unusual behavior or edge-case handling described?
* Is the use and function of third-party libraries documented?
* Are data structures and units of measurement explained?
* Is there any incomplete code? If so, should it be removed or flagged with a suitable marker like ‘TODO’?

### Testing
* Is the code testable? i.e. don’t add too many or hide dependencies, unable to initialize objects, test frameworks can use methods etc.
* Do tests exist and are they comprehensive? i.e. has at least your agreed on code coverage.
* Do unit tests actually test that the code is performing the intended functionality?
* Are arrays checked for ‘out-of-bound’ errors?

# Appendix B: Tools
Code review tools known to be in use at Trimble

* [Rietveld](https://github.com/rietveld-codereview/rietveld/wiki)
* [Bitbucket Pull Requests](https://confluence.atlassian.com/bitbucketserver0414/using-pull-requests-in-bitbucket-server-895367664.html)
* [Crucible](https://www.atlassian.com/software/crucible)
* [Team Foundation Server Code Reviews](https://docs.microsoft.com/en-us/vsts/tfvc/get-code-reviewed-vs)

# Bibliography
* [Increase Defect Detection with our Code Review Checklist](https://blog.fogcreek.com/increase-defect-detection-with-our-code-review-checklist-example/)
* [Best Practices for Code Review](https://smartbear.com/learn/code-review/best-practices-for-peer-code-review/)
* [Effective Code Reviews – 9 Tips from a Converted Skeptic](https://blog.fogcreek.com/effective-code-reviews-9-tips-from-a-converted-skeptic/)
* [Why code reviews matter (and actually save time!)](https://www.atlassian.com/agile/code-reviews)
* [Code Review Checklist – To Perform Effective Code Reviews](http://www.evoketechnologies.com/blog/code-review-checklist-perform-effective-code-reviews/)
* [Best Kept Secrets of Peer Code Review](https://smartbear.com/SmartBear/media/pdfs/best-kept-secrets-of-peer-code-review.pdf)
