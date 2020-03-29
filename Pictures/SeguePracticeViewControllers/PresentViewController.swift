//
//  PresentViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var favoriteFood = "Mozzarella Sticks"
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DestinationSegue" {
            guard let destination2VC = segue.destination as? Destination2ViewController else { return }
            destination2VC.favoriteFood = favoriteFood
        }
    }    
}
