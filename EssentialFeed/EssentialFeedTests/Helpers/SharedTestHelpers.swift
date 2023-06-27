//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0, userInfo: nil)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

private func anyData() -> Data {
    return Data("any data".utf8)
}
