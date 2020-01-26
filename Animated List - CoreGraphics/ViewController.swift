//
//  ViewController.swift
//  Animated List - CoreGraphics
//
//  Created by Lambda_School_Loaner_201 on 1/25/20.
//  Copyright © 2020 Christian Lorenzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userButtonConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var showAnimationBUttonConstraint: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userButtonConstraint.constant -= view.bounds.width
        showAnimationBUttonConstraint.constant -= view.bounds.width
    }
    
    
    var animationPerformedOnce = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    self.userButtonConstraint.constant += self.view.bounds.width
                    self.view.layoutIfNeeded()
                }, completion: nil)
                
                UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                    self.showAnimationBUttonConstraint.constant += self.view.bounds.width
                    self.view.layoutIfNeeded()
                }, completion: nil)
            
            animationPerformedOnce = true
            
            }
        }
        
        


}

