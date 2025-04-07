//
//  ObjectViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class ObjectViewController: UIViewController {

    var objectIndex = 0
    
    @IBOutlet var testImageViewCollection: [UIImageView]!
    @IBOutlet weak var ThreeImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startView()
        print(objectIndex)
    }
    
    func startView() {
        
        self.nameLabel.text = objects[objectIndex].name
        self.costLabel.text = objects[objectIndex].cost
        
//            for i in 0..<objects[objectIndex].images.count {
                self.testImageViewCollection[0].image = objects[objectIndex].images[0]
//            }
        
    }

}
