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
        
        self.imageView = UIImageView(image: UIImage(named: "penguin"))
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
        ++self.currentAnimationCounter
        if self.currentAnimationCounter > 7 { self.currentAnimationCounter = 0 }
    }
    
    // MARK: - Stored Properties
    
    var imageView: UIImageView!
    var currentAnimationCounter = 0
}

