//
//  UIViewController+Extension.swift
//  UIPresentationControllerProject - incomplete
//
//  Created by Mark Tapia on 8/21/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func setupPopover(with viewController: UIViewController) {
        self.modalPresentationStyle = .popover
        self.popoverPresentationController?.delegate = (viewController as! UIPopoverPresentationControllerDelegate)
        self.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
        self.popoverPresentationController?.sourceView = viewController.view
        self.popoverPresentationController?.sourceRect = viewController.view.frame
    }
}
