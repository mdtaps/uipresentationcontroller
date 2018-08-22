//
//  MenuPresentationAnimator.swift
//  UIPresentationControllerProject - Final
//
//  Created by Mark Tapia on 8/21/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import Foundation
import UIKit

class MenuPresentationAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let toViewController = transitionContext.viewController(forKey: .to)!
        let containerView = transitionContext.containerView
        
        let animationDuration = transitionDuration(using: transitionContext)
        
        toViewController.view.transform = CGAffineTransform(translationX: toViewController.view.bounds.width, y: 0)
        toViewController.view.clipsToBounds = true
        containerView.addSubview(toViewController.view)
        
        UIView.animate(withDuration: animationDuration, animations: {
            toViewController.view.transform = .identity
        }) { finished in
            transitionContext.completeTransition(finished)
        }
    }
    
}
