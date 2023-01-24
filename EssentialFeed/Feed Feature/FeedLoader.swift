//
//  FeedLoader.swift
//  EssentialFeed
//

import Foundation

//public typealias LoadFeedResult = Result<[FeedImage], Error>
//
//public enum LoadFeedResult {
//    case success([FeedImage])
//    case failure(Error)
//}

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
