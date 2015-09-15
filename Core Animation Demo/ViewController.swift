//
//  ViewController.swift
//  Core Animation Demo
//
//  Created by Yohannes Wijaya on 9/15/15.
//  Copyright © 2015 Yohannes Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView = UIImageView(image: UIImage(named: "Swift"))
        self.imageView.center = CGPointMake(512, 384)
        self.view.addSubview(self.imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - IBOutlet Properties

    @IBOutlet weak var tapButton: UIButton!
    
    // MARK: - IBAction Properties
    
    
    @IBAction func tapButtonTapped(sender: UIButton) {
        self.tapButton.hidden = true
        
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5, options: UIViewAnimationOptions(), animations: { [unowned self] () -> Void in
                switch self.currentAnimationCounter {
                    case 0: self.imageView.transform = CGAffineTransformMakeScale(2.0, 2.0)
                    case 1: self.imageView.transform = CGAffineTransformIdentity
                    case 2: self.imageView.transform = CGAffineTransformMakeTranslation(-256.0, -256.0)
                    case 3: self.imageView.transform = CGAffineTransformIdentity
                    case 4: self.imageView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                    case 5: self.imageView.transform = CGAffineTransformIdentity
                    case 6:
                        self.imageView.alpha = 0.1
                    case 7:
                        self.imageView.alpha = 1.0
                    default: break
                }
            }) { [unowned self] (finished: Bool) -> Void in
                self.tapButton.hidden = false
        }
        
        ++self.currentAnimationCounter
        if self.currentAnimationCounter > 7 { self.currentAnimationCounter = 0 }
    }
    
    // MARK: - Stored Properties
    
    var imageView: UIImageView!
    var currentAnimationCounter = 0
}

