//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeediOSTests
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
