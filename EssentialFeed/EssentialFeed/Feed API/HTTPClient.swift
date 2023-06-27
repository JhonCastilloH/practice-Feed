//
//  HTTPClient.swift
//  EssentialFeed
//

import Foundation

//public enum HTTPClientResult {
//    case success(Data, HTTPURLResponse)
//    case failure(Error)
//}

public protocol HTTPClientTask {
    func cancel()
}

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    @discardableResult
    func get(from url: URL, completion: @escaping (Result) -> Void) -> HTTPClientTask
}
