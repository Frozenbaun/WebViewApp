//
//  ViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}



extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ObjectCollectionViewCell", for: indexPath) as! ObjectCollectionViewCell
        cell.setup(object: objects[indexPath.row])
        return cell
    }
    
    
    
    
}
