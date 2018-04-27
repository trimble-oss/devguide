---
layout: page
title: Unit Testing
section: development-practices
permalink: /development-practices/unit-testing/
---

## Introduction
Unit tests are fitness tests for individual parts of a software program, the 
part here being the smallest possible testable component. The farther down the
lifecycle of a product/service a bug is discovered, the greater the cost of 
fixing it. Unit testing code provides one means to ensure any product/system 
is tested early enough in the development lifecycle and so reduces the cost in
the long run.

Unit testing is limited to testing the smallest possible part in the code - 
could be a simple class or even a really small group of classes with high 
cohesion. Other types of automated tests such as integrations tests that span
multiple layers of the system, while though invaluable are not considered as 
unit tests. The scope of the document is limited to guidelines around unit 
testing only.

## Best Practices
Following are some of the good practices that are applicable regardless of the
development style in place - TDD or otherwise.

### Focused Tests
Ensure the tests are against a very specific behaviour of the unit in question, 
try to have one logical assertion per test and avoid repeated assertions in 
many tests.

### Isolated Tests
Make each test completely independent of other tests in the test suite. Use 
isolation frameworks to mock/stub out all external dependencies to the subject 
under test.  

Isolate the tests such that:

1. There is no assumption on the order in which the tests are run
2. Failures in one tests should not result in failure of another test.
3. There is no interdependency between tests, intentional or otherwise.

### Consistent naming
Choose a consistent naming convention for the tests that will reflect 
**subject** under test, the **behavior** that is being verified and **result** 
that is expected. For example in a Counter unit test, a possible test name 
could be **shouldIncreaseCountByOneWhenTicked**. Whatever be the style, make 
sure that it is consistent across your test suite and a look at the test 
reports should tell you what is tested and what is not.

### Integrate with a build system
If the focus of the unit tests is to ensure better quality of your 
product/system, then it is imperative that these tests are part of a 
continuous build system. While all unit tests should be run and found to be 
passing prior to being merged into and branches where other team members are 
working, deployment processes in place should ensure that all tests are passed 
prior to deployments.

## Integrate with a build system
If the focus of the unit tests is to ensure better quality of your 
product/system, then it is imperative that these tests are part of a 
continuous build system. While all unit tests should be run and found to be 
passing prior to being merged into and branches where other team members are 
working, deployment processes in place should ensure that all tests are passed
prior to deployments.

### Fix failures
Have a process in place to notify the primary developers of the system in case
of a failure in the tests. Ensuring that all tests are repaired to pass 
whenever they are found to be broken is key to having a successful unit testing
culture.

### Deterministic tests
A key characteristic of a good automated test suite is determinism. Ensure that 
tests do not provide false positives or false negatives. Flaky tests if any 
should be sufficiently quarantined and processes should be put in place to 
ensure that these tests are made deterministic as early as possible.

### Test Coverage, Measurements, and Goals  
While the specific Unit Test Coverage goals will be highly dependent on the 
team & code base, the act of measuring Unit Test Coverage in a continuous way, 
and monitoring how you are performing against your team goals is a recommended
best practice.

In general all teams should operate under the minimum rule of "Leave the unit 
testing coverage better than you found it".

## Appendix
Following are some of the good practices that are applicable regardless of the development style in place - TDD or otherwise.

|    Language       |       Unit testing                  |       Isolation framework    |       Reporting tool                                           |
|-------------------|-------------------------------------|------------------------------|----------------------------------------------------------------|
| Java              |[JUnit](http://junit.org/) <br/>[Test NG](http://testng.org/doc/)            |[Mockito](http://site.mockito.org/) <br/>[JMockit](http://jmockit.github.io/)        |  [Gradle](https://gradle.org/) <br/>[Surefire plugin](http://maven.apache.org/surefire/maven-surefire-plugin/) <br/> [Jacoco](http://www.eclemma.org/jacoco/) <br/>[SonarQube](https://www.sonarqube.org/) |
| C#                |NUnit <br/>XUnit <br/>MSUnitTest  |NUnit mocks <br/>Moq <br/>[NSubstitue](http://nsubstitute.github.io/)    |OpenCover <br/>ReportGenerator |  
|Angular JS         | Jasmine                             | Jasmine                      |  Karma <br/>Cobertura                  |  
|C++                | [Google Test](https://github.com/google/googletest) <br/>[Catch2](https://github.com/catchorg/Catch2)         |[Google Mock](https://github.com/google/googletest/tree/master/googlemock) <br/>[FakeIt](https://github.com/eranpeer/FakeIt) |[Google Test Adapter](https://github.com/csoltenborn/GoogleTestAdapter) <br/>[TeamCity](https://www.jetbrains.com/teamcity/) |  
|Python             | [pytest](https://docs.pytest.org/en/latest/)[^okken]|[pytest-mock](https://pypi.python.org/pypi/pytest-mock) <br/> wrapper for [mock](https://pypi.python.org/pypi/mock)                      |       [pytest-cov](http://pytest-cov.readthedocs.io/en/latest/)                 |  




[^okken]: [Python Testing with pytest](https://pragprog.com/book/bopytest/python-testing-with-pytest) by Brian Okken is a great introduction to pytest

---
### Document Revision History

| Version | Revision date | Revision description   |
|---------|---------------|------------------------|
| 1.0     | 27-Apr-2018   | Initial public release |