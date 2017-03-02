import XCTest
@testable import WebSocketDemo

class WebSocketDemoTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(WebSocketDemo().text, "Hello, World!")
    }


    static var allTests : [(String, (WebSocketDemoTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
