//
//  PresentNameViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PresentNameViewController: UIViewController {

    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name ?? "no favorite food?")
    }
}
