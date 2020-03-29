//
//  PictureCollectionViewCell.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PictureCollectionViewCell: UICollectionViewCell {
    
    var picture: Picture? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private func updateViews() {
        guard let picture = picture else { return }
        titleLabel.text = picture.title
        pictureView.image = picture.image
    }
}
