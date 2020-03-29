//
//  PresentFavoriteHobbyViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PresentFavoriteHobbyViewController: UIViewController {

    var favoriteHobby: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(favoriteHobby ?? "no favorite food?")
    }
}
