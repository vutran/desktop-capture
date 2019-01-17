import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(desktop_captureTests.allTests),
    ]
}
#endif