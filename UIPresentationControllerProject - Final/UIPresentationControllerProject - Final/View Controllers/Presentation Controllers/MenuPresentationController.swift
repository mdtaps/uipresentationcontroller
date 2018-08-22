//
//  MenuPresentationController.swift
//  UIPresentationControllerProject - Final
//
//  Created by Mark Tapia on 8/21/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

class MenuPresentationController: UIPresentationController {
    
    override var frameOfPresentedViewInContainerView: CGRect {
        let height = containerView!.bounds.height
        let width = containerView!.bounds.width * 0.7
        return CGRect(x: containerView!.bounds.width - width, y: 0, width: width, height: height)
    }
    
    override func containerViewWillLayoutSubviews() {
        presentedView?.frame = frameOfPresentedViewInContainerView
    }
}
