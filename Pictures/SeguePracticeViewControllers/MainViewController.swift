//
//  MainViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var greeting = "Hello"
    
    // Create an IBAction to perform segue programmitically
    @IBAction func presentVC(_ sender: UIButton) {
        // 1. Create an instance of storyboard
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // 2. Create an instance of the view controller and down cast to custom class or it will send it to an instance of a plain view controller
        let destinationVC = mainStoryboard.instantiateViewController(identifier: "DestinationVC") as? DestinationViewController
        //destinationVC.modalPresentationStyle = .currentContext
        //destinationVC.modalTransitionStyle = .flipHorizontal
        // 3. Create a place in memory in the destination view controller with an optional variable to hold the data we are sending over in this step.
        destinationVC?.greeting = greeting
        // 4. Present view controller
        present(destinationVC!, animated: true, completion: nil)
    }

}
