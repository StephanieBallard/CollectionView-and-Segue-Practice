//
//  PresentName&HobbyViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PresentNameAndHobbyViewController: UIViewController {

    var name = "Stephanie"
    var favoriteHobby = "Coding"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PresentNameSegue" {
            guard let presentNameVC = segue.destination as? PresentNameViewController else { return }
            presentNameVC.name = name
        } else if segue.identifier == "PresentFavoriteHobbySegue" {
            guard let presentFavoriteHobbyVC = segue.destination as? PresentFavoriteHobbyViewController else { return }
            presentFavoriteHobbyVC.favoriteHobby = favoriteHobby
        }
    }
}
