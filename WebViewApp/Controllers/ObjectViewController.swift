//
//  ObjectViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class ObjectViewController: UIViewController {

    var object: Object?
//    let cell = ImageCollectionViewCell(frame: CGRect(x: 0, y: 0, width: 240, height: 240))
    var collectionView: UICollectionView!
    
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
        startView()
        
    }
    
    func startView() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        guard let object = object else {return}
        self.nameLabel.text = object.name
        self.costLabel.text = object.cost
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
      
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: .init(x: 80, y: 250, width: 250, height: 250) , collectionViewLayout: setupFlowLayout())
        collectionView.backgroundColor = UIColor.white
        collectionView.isPagingEnabled = true
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: "imageCell")
        
        
    }
    
    func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 240, height: 240)
        layout.scrollDirection = .horizontal
        return layout
    }

}



extension ObjectViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return object?.images.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as? ImageCollectionViewCell else {return UICollectionViewCell()}
            guard let obj = object else {return cell}
        cell.setupImage(obj: obj, indexPath: indexPath)
            
            return cell
    }
    
    
}
