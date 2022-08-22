//
//  XCTTestCase+MemoryLeakTrackingHelper.swift
//  EssentialFeedTests
//

import XCTest

extension XCTestCase {
    
    func trackForMemoryLeak(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
    
}
