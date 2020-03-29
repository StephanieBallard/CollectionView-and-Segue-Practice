//
//  PicturesController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PicturesController {
    
    // Both do the same thing.
    private(set) var pictures = [Picture]()
    //var pictures: [Picture] = []
    
    // MARK: - C.R.U.D. Methods
    
    func createPicture(withTitle title: String, description: String, imageData: Data) {
        let picture = Picture(title: title, description: description, imageData: imageData)
        pictures.append(picture)
    }
    
    func updatePicture(picture:Picture, title: String, description: String ) {
        guard let index = pictures.firstIndex(of: picture) else { return }
        pictures[index].description = description
        pictures[index].title = title
    }
    
    func deletePicture(picture: Picture) {
        guard let index = pictures.firstIndex(of: picture) else { return }
        pictures.remove(at: index)
    }
}

// To avoid this we can make the pictures array private
//let picture = PicturesController()
//picture.pictures += [Picture(title: "Title", description: "", imageData: Data())]


