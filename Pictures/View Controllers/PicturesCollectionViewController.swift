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
    
    let pictureController = PicturesController()
    
    // MARK: Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
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

