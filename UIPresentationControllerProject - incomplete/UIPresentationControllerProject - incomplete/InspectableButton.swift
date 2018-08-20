//
//  InspectableButton.swift
//  UIPresentationControllerProject - incomplete
//
//  Created by Mark Tapia on 8/19/18.
//  Copyright © 2018 Mark Tapia. All rights reserved.
//

import UIKit

@IBDesignable
class InspectableButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
        
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            guard let newColor = newValue else { return }
            layer.borderColor = newColor.cgColor
        }
    }
}
