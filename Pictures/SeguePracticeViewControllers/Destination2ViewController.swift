//
//  Destination2ViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class Destination2ViewController: UIViewController {
    
    var favoriteFood: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(favoriteFood ?? "no favorite food?")
    }
}
