//
//  ViewController.swift
//  UIPresentationControllerProject - Final
//
//  Created by Mark Tapia on 8/19/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

@IBDesignable
class HomeViewController: UIViewController {
    
    let menuTransitioningDelegate = MenuTransitioningDelegate()
    
    @IBAction func modalLaunch(_ sender: UIButton) {
        let menuVC = makeMenu()
        present(menuVC, animated: true, completion: nil)
    }
    
    @IBAction func popoverLaunch(_ sender: UIButton) {
        let menuVC = makeMenu()
        menuVC.setupPopover(with: self)
        present(menuVC, animated: true, completion: nil)
    }
    
    @IBAction func customLaunch(_ sender: UIButton) {
        let menuVC = makeMenu()
        menuVC.transitioningDelegate = menuTransitioningDelegate
        menuVC.modalPresentationStyle = .custom
        print(menuVC.view.frame)
        present(menuVC, animated: true, completion: nil)
    }
    
}

extension HomeViewController {
    fileprivate func makeMenu() -> MenuViewController {
        guard let menuVC = storyboard?.instantiateViewController(withIdentifier: Constants.MenuViewControllerStoryboardId) as? MenuViewController else {
            fatalError("Could not instantiate \(Constants.MenuViewControllerStoryboardId) from Storyboard")
        }
        return menuVC
    }
}

extension HomeViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}

