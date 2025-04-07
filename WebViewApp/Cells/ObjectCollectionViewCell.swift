//
//  ObjectCollectionViewCell.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class ObjectCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(object: Object) {
        nameLabel.text = object.name
        imageView.image = object.images
    }
}
