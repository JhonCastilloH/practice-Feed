//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
