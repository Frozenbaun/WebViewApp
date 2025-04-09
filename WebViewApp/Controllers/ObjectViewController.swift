//
//  ObjectViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class ObjectViewController: UIViewController {

    var object: Object?
    
    
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startView()
        
    }
    
    func startView() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        guard let object = object else {return}
        self.nameLabel.text = object.name
        self.costLabel.text = object.cost
        
        
        
    }

}



extension ObjectViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return object?.images.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCollectionViewCell
            guard let obj = object else {return cell}
            cell.setup(obj: obj, indexPath: indexPath)
            print("srabotal")
            return cell
    }
    
    
}
