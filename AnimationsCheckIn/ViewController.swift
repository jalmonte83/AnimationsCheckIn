//
//  ViewController.swift
//  AnimationsCheckIn
//
//  Created by Jeffrey Almonte on 1/28/19.
//  Copyright © 2019 Jeffrey Almonte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var cat: UIButton!
    
    
    @IBOutlet weak var duck: UIImageView!
     private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
        
    }


    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
        
    }
    
    @IBAction func imageTransitioned(_ sender: UIButton) {
        if cat.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: cat, duration: 1.5, options: [.transitionCrossDissolve], animations: {
                self.cat.setImage(UIImage(named: "dog"), for: .normal)
                self.name.text = "WOOF!"
            })
    cat.setImage(UIImage(named: "dog"), for: .normal)
        } else {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionCrossDissolve], animations: {
                self.cat.setImage(UIImage(named: "cat"), for: .normal)
                self.name.text = "MEOW!"
            })
        }
    }
    
}

