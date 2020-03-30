//
//  PicturesCollectionViewController.swift
//  Pictures
//
//  Created by Stephanie Ballard on 3/28/20.
//  Copyright © 2020 brian vilchez. All rights reserved.
//

import UIKit

class PicturesCollectionViewController: UICollectionViewController {
    
    // MARK: - Properties
    
    let pictureController = PictureController()
    
    // MARK: Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    
    // MARK: - Navigation
    
    // Segue Steps:
    // 1. Get segue's name or identifier
    // 2. Set the view controller that's the Destination
    // 3. Hand over relevant data to the destinationVC
    // 4. Get the object from the array using an indexPath
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddPictureSegue" {
            guard let addPictureVC = segue.destination as? AddPictureViewController else { return }
            addPictureVC.pictureController = pictureController
            
        } else if segue.identifier == "PictureDetailSegue" {
            guard let pictureDetailVC = segue.destination as? PictureDetailViewController else { return }
            pictureDetailVC.pictureController = pictureController
            
            // 1. Get an instance of the cell for the collection view
            guard let cell = sender as? PictureCollectionViewCell else { return }
            // 2. Get indexPath from the cell object
            guard let indexPath = collectionView.indexPath(for: cell) else { return }
            // 3. Hand off oject to destinationVC
            pictureDetailVC.picture = pictureController.pictures[indexPath.item]
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictureController.pictures.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PictureCell", for: indexPath) as? PictureCollectionViewCell else { return UICollectionViewCell() }
        let picture = pictureController.pictures[indexPath.item]
        cell.picture = picture
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    //    override func setEditing(_ editing: Bool, animated: Bool) {
    //        super.setEditing(editing, animated: animated)
    //
    //        collectionView.allowsMultipleSelection = editing
    //        let indexPaths = collectionView.indexPathsForVisibleItems
    //        for indexPath in indexPaths {
    //            let cell = collectionView.cellForItem(at: indexPath) as? PictureCollectionViewCell
    //        }
    //    }
}

extension PicturesCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 358, height: 354)
    }
}
