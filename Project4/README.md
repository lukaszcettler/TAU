# TAU - Project 4

 ## Łukasz Cettler (s20168) - grupa 74C

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About The Project](#about-the-project)
* [Technologies Used](#technologies-used)

<!-- ABOUT THE PROJECT -->
## About The Project

It's a clone of a [Project1](https://github.com/lukaszcettler/TAU/tree/main/Project1), that compares Test Doubles by example in Swift.

* Dummy objects are passed around but never actually used. Usually they are just used to fill parameter lists.
![Dummy](https://github.com/lukaszcettler/TAU/blob/main/Project4/Images/Dummy.png)
* Stubs provide canned answers to calls made during the test, usually not responding at all to anything outside what’s programmed in for the test.
![Stub](https://github.com/lukaszcettler/TAU/blob/main/Project4/Images/Stub.png)
* Fake objects actually have working implementations, but usually take some shortcut which makes them not suitable for production
![Fake](https://github.com/lukaszcettler/TAU/blob/main/Project4/Images/Fake.png)
* Mocks are pre-programmed with expectations which form a specification of the calls they are expected to receive. They can throw an exception if they receive a call they don’t expect and are checked during verification to ensure they got all the calls they were expecting.
![Mock](https://github.com/lukaszcettler/TAU/blob/main/Project4/Images/Mock.png)

### Passed tests examples:
![Tests](https://github.com/lukaszcettler/TAU/blob/main/Project4/Images/Tests.png)

## Technologies Used

* Swift
* UIKit library
* XCTest
