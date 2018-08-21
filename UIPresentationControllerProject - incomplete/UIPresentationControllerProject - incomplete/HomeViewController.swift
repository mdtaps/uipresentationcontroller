//
//  ViewController.swift
//  UIPresentationControllerProject - incomplete
//
//  Created by Mark Tapia on 8/19/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

@IBDesignable
class HomeViewController: UIViewController {

    @IBOutlet weak var popoverButton: InspectableButton!
    
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
        //Launch Custom Presentation
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

