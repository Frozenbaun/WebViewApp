//
//  ImageCollectionViewCell.swift
//  WebViewApp
//
//  Created by Александра Аришина on 08.04.2025.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(obj: Object, indexPath: IndexPath) {
        imageView.image = obj.images[indexPath.row]
    }
}
