//
//  MenuDismissalAnimator.swift
//  UIPresentationControllerProject - Final
//
//  Created by Mark Tapia on 8/22/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

class MenuDismissalAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromViewController = transitionContext.viewController(forKey: .from)!        
        let animationDuration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: animationDuration, animations: {
            fromViewController.view.transform = CGAffineTransform(translationX: fromViewController.view.bounds.width, y: 0)
        }) { finished in
            transitionContext.completeTransition(finished)
        }
    }
}
