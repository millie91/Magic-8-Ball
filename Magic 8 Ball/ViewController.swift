//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Milica Sucevic on 01/10/2018.
//  Copyright © 2018 Milica Sucevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateButtonImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateButtonImages()
        
    }
    
    func updateButtonImages() {
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateButtonImages()
        
    }
    
}

