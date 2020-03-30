//
//  PictureDetailViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PictureDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    // MARK: - Properties
    
    var pictureController: PictureController?
    var picture: Picture?
    
    // MARK: - LifeCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // MARK: Helper Methods
    
    private func updateViews() {
        guard let unwrappedPicture = picture else { return }
        imageView.image = UIImage(data: unwrappedPicture.imageData)
        titleTextField.text = unwrappedPicture.title
        descriptionTextField.text = unwrappedPicture.description
    }
    
    // Updating picture will be similar to creating an image in the addPictureVC
    @IBAction func updatePicture(_ sender: UIButton) {
        // Make sure textFields have values and are not empty strings
        guard let title = titleTextField.text, !title.isEmpty,
            let description = descriptionTextField.text, !description.isEmpty else { return }
        // Wrap picture to pass into updatePicture method
        guard let unwrappedPicture = picture else { return }
        pictureController?.updatePicture(picture: unwrappedPicture, title: title, description: description)
        navigationController?.popViewController(animated: true)
    }
}
