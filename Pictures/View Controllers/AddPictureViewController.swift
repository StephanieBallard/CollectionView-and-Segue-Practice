//
//  AddPictureViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class AddPictureViewController: UIViewController {
    
    // MARK: - Properties
    
    var pictureController: PictureController?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func saveImageButtonTapped(_ sender: UIButton) {
        guard let title = titleTextField.text, !title.isEmpty,
            let description = descriptionTextField.text, !description.isEmpty,
            let imageData = imageView.image?.pngData(), !imageData.isEmpty else { return }
        
        pictureController?.createPicture(withTitle: title, description: description, imageData: imageData)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func openPhotoLibrary(_ sender: UITapGestureRecognizer) {
        photoLibrary()
    }
    
    // MARK: - Helper Methods
    
    private func photoLibrary() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            present(imagePicker, animated: true, completion: nil)
        }
    }
}

// UIImagePickerControllerDelegate allows us to add a picture into the app
extension AddPictureViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else { return }
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
}
