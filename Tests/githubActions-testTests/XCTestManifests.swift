import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(githubActions_testTests.allTests),
    ]
}
#endif
