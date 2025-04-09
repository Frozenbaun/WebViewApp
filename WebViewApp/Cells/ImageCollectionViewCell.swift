//
//  ImageCollectionViewCell.swift
//  WebViewApp
//
//  Created by Александра Аришина on 08.04.2025.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        self.contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        self.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            
            
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        imageView.contentMode = .scaleAspectFit
    }
    
    func setupImage(obj: Object, indexPath: IndexPath) {
        
        imageView.image = obj.images[indexPath.item]

    }
}
