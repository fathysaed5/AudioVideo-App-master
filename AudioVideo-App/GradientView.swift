//
//  GradientView.swift
//  AudioVideo-App
//
//  Created by Hassan Mostafa on 3/8/18.
//  Copyright © 2018 Hassan Mostafa. All rights reserved.
//

import UIKit
@IBDesignable

class GradientView: UIView {
    
    @IBInspectable var firstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    override class var layerClass: AnyClass {
        return {
            CAGradientLayer.self
            
            }()
    }
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor.cgColor, secondColor.cgColor]
    }
}


