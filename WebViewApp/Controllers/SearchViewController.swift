//
//  ViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class SearchViewController: UIViewController {
    
    var object = 0

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startView()
    }

    func startView() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "objectCell" {
            guard let nextScreen = segue.destination as? ObjectViewController else {return}
            nextScreen.objectIndex = object
        }
        print("es")
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            object = indexPath.row
    }
    
    
}
