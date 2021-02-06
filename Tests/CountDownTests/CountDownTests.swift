import XCTest
@testable import CountDown

final class CountDownTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CountDown().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
