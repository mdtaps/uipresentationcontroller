//
//  MenuViewController.swift
//  UIPresentationControllerProject - Final
//
//  Created by Mark Tapia on 8/20/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    deinit {
        transitioningDelegate = nil
        modalPresentationStyle = .none
    }
    
    @IBAction func dismissTapped(_ sender: InspectableButton) {
        dismiss(animated: true, completion: nil)
    }
}
