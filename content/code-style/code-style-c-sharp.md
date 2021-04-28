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

Follow Microsoft’s [Framework Design Guidelines](https://docs.microsoft.com/dotnet/standard/design-guidelines/).

External API’s shall use xmldoc. This allows for tools such as [Swashbuckle](https://www.nuget.org/packages/Swashbuckle) (Swagger documentation tool) or SandCastle - [SHFB](https://github.com/EWSoftware/SHFB) (MSDN style documentation tool) to create detailed documentation.

## Exceptions to the Standard

None

## Implementing the Standard

- Microsoft ASP.NET / ASP.NET Core MVC team developed a [StyleCop code style settings file](https://github.com/aspnet/AspNetCore/blob/master/src/Mvc/Settings.StyleCop) to enforce code style.

- Newline format and Tabs vs. spaces should be defined in an [.editorconfig](https://docs.microsoft.com/visualstudio/ide/create-portable-custom-editor-options) file in source control. Visual Studio Code, VS 2017, and many other editors use this file for automatic configuration.

- StyleCop analyzes C# source code to enforce a set of style and consistency rules. It is available in two primary forms:

- The [StyleCop Visual Studio extension](https://marketplace.visualstudio.com/items?itemName=ChrisDahlberg.StyleCop), which allows StyleCop analysis to be run on any file, project, or solution in Visual Studio without modifying the source code. Visual Studio 2010, 2012, 2013, 2015, and 2017 are supported by this extension.

- The [StyleCop.MSBuild NuGet package](https://www.nuget.org/packages/StyleCop.MSBuild), which allows StyleCop analysis to be added to any .NET 4.0+ project without installing anything else on the system.

- Additionally, ReSharper (productivity tool that can analyze StyleCop visually as you type with the ReSharper StyleCop Extension Installed): [https://www.jetbrains.com/resharper/](https://www.jetbrains.com/resharper/)

- StyleCop Settings file (place in directory of your solution added to source control): [Settings.StyleCop](https://github.com/aspnet/AspNetCore/blob/master/src/Mvc/Settings.StyleCop)

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

If there needs to be an exception to the StyleCop standard, they can be called out individually with a SuppressMessage attribute. This should be rarely needed if at all. Example below:

```c#
[SuppressMessage("Microsoft.StyleCop.CSharp.OrderingRules", "SA1202:ElementsMustBeOrderedByAccess")]

public class X

{

}
```
