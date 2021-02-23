---
title: "Code Owners Configuration"
layout: "single"
description: ""
innersource: true
---

Follow the steps below in order to configure the CODEOWNERS plugin:

- Add a `CODEOWNERS` or a `.bitbucket/CODEOWNERS` file in your repository. Leave it with the `.file` extension.

- In the Bitbucket repository, go to `Repository Settings -> Merge Checks` and enable the `Code Owners minimum approvals` option. If there are multiple teams that own the project use the `Min. # of approvals for each group` option.

- To configure the owners of the projects and files of the repository, read the following instructions:

```txt
# Either put this in a file called CODEOWNERS or .bitbucket/CODEOWNERS
# Every line is a file pattern that is followed by one or more code owners.
# Lines starting with # are comments.

# This user will be the default owner for everything in the repo.
*                        @AllMighty_Owner@trimble.com

# Ordering is important! The last matching file pattern has the highest precedence.
# So if only a Java file is in the pull request, The_Java_Guy@trimble is the code owner
# and not the default owner AllMighty_Owner@trimble.
*.java                   @The_Java_Guy@trimble.com

# You can also use Bitbucket groups which start with '@@' compared to single users.
# This will add all members of the Bitbucket group JSExperts.
*.js                     @Some_Guy_Paul@trimble.com @@JSExperts

# If you want, you can define your own code owner groups instead of using Bitbucket groups.
# This will define a new group MyDevs, both including users and other groups:
@@@MyDevs                @Some_Guy_Paul@trimble.com  @The_Java_Guy@trimble.com @@JSDevs

# For Bitbucket users and groups with spaces in their name, put them into double quotes.
*.ts                     @@"Dev Ops Team"

# When your glob expression contains spaces, put the glob into double quotes.
"a/path with spaces/*"   docs@trimble.com

# Files starting with a `#` or a `!` can still be used by escaping them.
\#myfile.rb              @Some_Guy_Paul@trimble.com
\!yourfile.rb            @@MyDevs

# AnnTheScalaPro is the code owner of all files in the /src/main/scala directory at
# the root and all its descendants (e.g., /src/main/scala/com/x/y/z.scala).
/src/main/scala/         @AnnTheScalaPro@trimble.com

# ci/* will match all files in the directory ci, but not deeper in
# the directory hierarchy (so ci/jobs/prod.yml will not match).
ci/*                     @devops

# You can use '!' for negation in front of file pattern without any code owners afterwards,
# to unset all previously defined code owners of the files.
# e.g. devops group wants to review everything under ci (as defined above),
# except ci/playgrounds.yml, which nobody needs to review:
!ci/playgrounds.yml

# It's also possible to use double-asterisk globs. Here's an example that will match
# all JS files under /src/components.
src/components/**/*.js   @@MyDevs

# MyDevs owns any files in the groovy directory anywhere in the
# file tree (e.g., src/main/groovy/com/x/y/z.groovy).
groovy/                  @@MyDevs

# It is important to protect CODEOWNERS file as well because otherwise it can get deleted
# or moved within a pull request; so we want to assign a code owner to it which can prevent this
CODEOWNERS               @AllMighty_Owner@trimble.com
```

Helpful links: <https://mibexsoftware.atlassian.net/wiki/spaces/CODEOWNERS/pages/222822413/Usage>
