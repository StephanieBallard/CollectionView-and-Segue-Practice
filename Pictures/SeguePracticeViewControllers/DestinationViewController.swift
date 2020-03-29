//
//  DestinationViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {

    var greeting: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(greeting ?? "no value")

        // Do any additional setup after loading the view.
    }

    
    @IBAction func dismissVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
