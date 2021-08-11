---
title: "C# Code Style"
ShortTitle: "C#"
layout: "single"
description: "Trimble's code style guidelines for C#"
url: "/code-style/c-sharp/"
image: "/img/icons/code-style/c-sharp.svg"
headerBGColor: "#239120"
headerBGInvert: true
code: true
---

## Reference Code Standard

Follow Microsoft's [C# Coding Conventions](https://docs.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions) which are based off of the [dotnet/runtime C# Style Guidelines](https://github.com/dotnet/runtime/blob/main/docs/coding-guidelines/coding-style.md#c-coding-style) while using the [dotnet/runtime .editorconfig file](https://github.com/dotnet/runtime/blob/main/.editorconfig).

External APIs shall use xmldoc. This allows for tools such as Swashbuckle (Swagger documentation tool) or [DocFX](https://dotnet.github.io/docfx/) (MSDN style documentation tool) to create detailed documentation.

## Implementing the Standard

- This standard requires .NET 5 or higher and Visual Studio 2017 or higher to run out of the box.

- Download the [dotnet/runtime .editorconfig file](https://github.com/dotnet/runtime/blob/main/.editorconfig) and place it in the same directory as your solution file (SLN).

```
-- Solution Root Folder
---- .editorconfig file
---- .sln file
-------- Subfolders/Projects
```

- Tools from JetBrains can make this standard compatible with any version of .NET and Visual Studio ([ReSharper](https://www.jetbrains.com/help/resharper/Using_EditorConfig.html)/[Rider](https://www.jetbrains.com/help/rider/Using_EditorConfig.html)).

- [Analyzers can be enabled](https://docs.microsoft.com/en-us/dotnet/core/project-sdk/msbuild-props#enablenetanalyzers) in versions of .NET prior to 5.

- Versions of Visual Studio prior to 2017 can use [an extension](https://marketplace.visualstudio.com/items?itemName=EditorConfigTeam.EditorConfig).

- For VS Code, usage of the [Omnisharp](https://www.strathweb.com/2020/02/hidden-features-of-omnisharp-and-c-extension-for-vs-code/#:~:text=Warm%20up%20%E2%80%93%20analyzers%20and%20.editorconfig) extension  will automatically use any .editorconfig in the top level of the workspace.

## Exceptions to the Standard

- None


## Businesses Using Language

| Business    | Codebase                                                           |
| ----------- | ------------------------------------------------------------------ |
| Agriculture | Trimble Ag Desktop                                                 |
| Agriculture | Trimble Ag Software (Web)                                          |
| Agriculture | Device Licensing API                                               |
| MEP         | Estimating, Contractor Solutions, Sysque, Nova, Accubid, ProDesign |
| Buildings   | Tekla Structures                                                   |

## Recommended Reading

- For an introductory article on how to structure and format C# code see [C# Coding Conventions (C# Programming Guide)](https://docs.microsoft.com/dotnet/csharp/programming-guide/inside-a-program/coding-conventions).

- Design principles (SOLID). [SOLID](https://en.wikipedia.org/wiki/SOLID) is a mnemonic acronym for five design principles intended to make software designs more understandable, flexible and maintainable.

    - Recommended Reading: [Adaptive Code via C#](https://www.amazon.com/Adaptive-Code-via-principles-Developer/dp/0735683204)

## Allowing Exceptions

If there needs to be an exception to the standard, it can be called out with a [SuppressMessage attribute](https://docs.microsoft.com/en-us/visualstudio/code-quality/in-source-suppression-overview?view=vs-2019#suppressmessage-attribute). This should be rarely needed. Example below:

```c#
[SuppressMessage("Performance", "CA1823:Avoid unused private fields")]
public class X
{

}
```
