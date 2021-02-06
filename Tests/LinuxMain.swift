import XCTest

import CountDownTests

var tests = [XCTestCaseEntry]()
tests += CountDownTests.allTests()
XCTMain(tests)
