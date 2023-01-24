//
//  FeedStore.swift
//  EssentialFeed
//

import Foundation

//public typealias RetrieveCachedFeedResult = Result<CachedFeed, Error>

//public enum RetrieveCachedFeedResult {
//    case success(CachedFeed)
//    case failure(Error)
//}

//public enum CachedFeed {
//    case empty
//    case found(feed: [LocalFeedImage], timestamp: Date)
//}

public typealias CachedFeed = (feed: [LocalFeedImage], timestamp: Date)

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    typealias RetrievalCompletion = (RetrievalResult) -> Void
    
    typealias RetrievalResult = Result<CachedFeed?, Error>
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    func retrieve(completion: @escaping RetrievalCompletion)
}
