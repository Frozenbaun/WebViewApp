//
//  ObjectViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

class ObjectViewController: UIViewController {

    var objectIndex: Int?
    
    
    @IBOutlet weak var threeImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startView()
        print(objectIndex ?? "nil")
    }
    
    func startView() {
        guard let int = objectIndex else {return}
        self.nameLabel.text = objects[int].name
        self.costLabel.text = objects[int].cost
        
        firstImageView.image = objects[int].images[0]
        secondImageView.image = objects[int].images[1]
        threeImageView.image = objects[int].images[2]
        
    }

}
