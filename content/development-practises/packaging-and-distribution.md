---
title: "Packaging and Distribution"
layout: "single"
description: ""
url: "/development-practices/packaging-and-distribution/"
image: "/img/icons/development-practices/packaging-and-distribution.svg"
development: true
---

## Introduction

Packaging software allows a user of the software to treat multiple interacting software modules as a single cohesive whole. The assumption being that the system has been tested and the modules are confirmed to work together. This provides a means of eliminating uncertainty when it comes to running the software.

Packaging software also provides a convenient way of distributing software as a single unit, including any configuration or auxiliary files which might be needed. This is particularly important when sharing libraries between different development teams as the package can be imported and used in existing software and can be treated as a single unit.

## Desktop Software Packaging

The de-facto standard for distribution of desktop software on Windows is [Microsoft Windows Installer](<https://msdn.microsoft.com/en-us/library/windows/desktop/cc185688(v=vs.85).aspx>) (MSI).

There are various applications which can create MSI-based installers. The most popular is [Flexera InstallShield](https://www.flexerasoftware.com/producer/products/software-installation/installshield-software-installer/) which is a complete IDE for building installers.

InstallShield can be extremely expensive to license, however Flexera also has [InstallShield Limited Edition for Visual Studio](https://info.flexerasoftware.com/IS-EVAL-InstallShield-Limited-Edition-Visual-Studio) which is a cut-down version of the full InstallShield product which integrates with Visual Studio. This might be a suitable option for smaller projects.

An alternative completely free solution is the [WIX Toolset](https://wixtoolset.org/).

WIX takes an alternative approach to InstallShield and does not have an IDE of its own. Instead it integrates with Visual Studio and installers are built using XML files hosted in a Visual Studio project. Although there is more work involved upfront, this is a much more cost-effective option for building installers.

## Cloud-based Distribution for Web Applications

[Trimble Cloud Services](https://sites.google.com/a/trimble.com/tcs/) (TCS) - provides support and infrastructure for cloud-based applications at Trimble using either Amazon Web Services (AWS) or Microsoft Azure.

Increasingly web-based applications are being hosted in [Docker](https://www.docker.com) containers which provide a number of advantages both in terms of cost and convenience over hosting applications directly on base hardware or in virtual machines either locally or in the cloud. Docker containers are fully supported on both AWS and Azure.

Additionally software is increasingly being architected as independent microservices which are particularly well suited for being hosted in Docker containers.

## Internal Software Reuse

[TPaaS](https://sites.google.com/a/trimble.com/tpaas/) (Trimble Platform as a Service) provides the [API Cloud](https://sites.google.com/a/trimble.com/tpaas/projects/api-management/api-management) a service for managing and publishing APIs for consumption by other Trimble applications.

For reusable software modules, e-Tools provides [Artifactory Pro](https://www.jfrog.com/artifactory). Artifactory Pro is capable of hosting multiple artifact repositories for a lot of different types of software artifacts, this includes npm repositories for JavaScript modules, NuGet for .NET packages, Maven for Java, PyPI for Python etc. Artifactory also integrates well with e-Tools Bamboo service for build orchestration. See [ e-tools Artifactory](https://support.trimble.cloud/support/solutions/folders/25000000761) for more details on using Artifactory.

## Language Specific Tools For Packaging and Distribution

### Python

[Distutils](https://docs.python.org/3/library/distutils.html)(setuptools) has become the primary method for packaging and distributing python packages and scripts. By using distutils and building a package with setup.py you can easily distribute packages publically on [PyPi](https://pypi.python.org/pypi) or privately using a [Git Repository](https://pip.pypa.io/en/stable/reference/pip_install/#git) or [Artifactory](https://www.jfrog.com/confluence/display/RTF/PyPI+Repositories).

This [Quick Start](https://the-hitchhikers-guide-to-packaging.readthedocs.io/en/latest/quickstart.html) give a good high level overview on building your first Python package. For more advanced features refer to the[ setuptools documentation](https://setuptools.readthedocs.io/en/latest/setuptools.html#basic-use).

- Use wheels as the library package format build using setuptools.

- Use pip to install packages.

- Store internal packages in Artifactory.

### Java

- [Apache Maven](https://maven.apache.org/)

  - Popular build and dependency management tool using XML based POM (Project Object Model)

- [Gradle](https://gradle.org/)

  - Popular build and dependency management tool, which builds upon Apache Maven, using Groovy DSL (Domain Specific Language). Offers many benefits over Maven ([Maven vs. Gradle Feature Comparison](https://gradle.org/maven-vs-gradle/)).

- [eTools Artifactory](https://sites.google.com/a/trimble.com/trimble-etools/tools) for consuming and publishing artifacts

  - Consuming will be dependent on the build/dependency management tool chosen. Please see each tool’s documentation for details. Plugins will be necessary.

    - [Artifactory Maven Plugin documentation](https://www.jfrog.com/confluence/display/RTF/Maven+Artifactory+Plugin)

    - [Artifactory Gradle Plugin documentation](https://www.jfrog.com/confluence/display/RTF/Gradle+Artifactory+Plugin)

  - Publishing requires an account on eTools Artifactory and initial setup of a repository within Artifactory. Please see the [eTools Artifactory site](https://sites.google.com/a/trimble.com/trimble-etools/tools) and [JFrog Artifactory documentation](https://www.jfrog.com/confluence/display/RTF/Welcome+to+Artifactory).

### JavaScript / Node

- Client-side should all be minified. You can then expose the client-side scripts via CDN such as CloudFront/S3.

- In order to optimize client-side applications for size and maximum download performance, it is recommended to use a module bundler to combine JavaScript files along with static assets such as CSS and images into packages. The current de-facto standard for this is [Webpack](https://webpack.js.org/). Webpack can also be used to minify JavaScript.

- Server-side packages can be written as npm modules and stored in a private repo such as [Artifactory](https://www.jfrog.com/confluence/display/RTF/Npm+Registry) which makes sharing/deploying easier than managing the actual code repo. Modules are made using [npms’s tooling](https://docs.npmjs.com/getting-started/creating-node-modules).

### C\#

- NuGet is the primary package manager source for .NET and .NET Standard projects.

- Any NuGet package can be used with any .NET language as long as the.NET framework version of the project matches the version required by the NuGet package.

- The NuGet.org server is used by default and anyone can publish a public project to the public server.

- Private NuGet servers can also be hosted and used such as an Artifactory repository hosted by eTools **this is the primary recommendation for NuGet use within Trimble.**

- [Installing and using packages](https://docs.microsoft.com/en-us/nuget/quickstart/use-a-package)

- [Creating a .NET NuGet Package](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package)

- [Creating a .NET Standard NuGet Package](https://docs.microsoft.com/en-us/nuget/guides/create-net-standard-packages-vs2017)

### Objective-C

[Conan](https://conan.io/)

This is the package manager we’re slowly integrating within our SketchUp projects, we privately host our packages in Trimble’s [Artifactory](https://www.jfrog.com/confluence/display/RTF/Npm+Registry), hosted by eTools.

You specify the dependencies for your project in a simple text file: your conanfile.txt. Conan recursively resolves dependencies between libraries, fetches libraries (or source code) for all dependencies, and creates and maintains the integration configuration files (Make, autotools, gcc/clang, Visual Studio, Xcode, [etc](https://docs.conan.io/en/latest/integrations.html).).
