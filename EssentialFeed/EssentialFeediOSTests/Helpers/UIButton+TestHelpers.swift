//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
