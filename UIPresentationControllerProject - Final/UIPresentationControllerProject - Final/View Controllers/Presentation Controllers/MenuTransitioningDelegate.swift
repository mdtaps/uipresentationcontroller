//
//  MenuTransitioningDelegate.swift
//  UIPresentationControllerProject - Final
//
//  Created by Mark Tapia on 8/21/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

class MenuTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return MenuPresentationController(presentedViewController: presented, presenting: presenting)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return MenuPresentationAnimator()
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return MenuDismissalAnimator()
    }
}
