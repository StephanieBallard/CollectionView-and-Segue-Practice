//
//  Picture.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

struct Picture: Codable, Equatable {
    var title: String
    var description: String
    let imageData: Data
    
    var image: UIImage {
        guard let image = UIImage(data: imageData) else { return UIImage() }
        return image
    }
}
