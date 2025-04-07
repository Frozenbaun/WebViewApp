//
//  Object.swift
//  WebViewApp
//
//  Created by Александра Аришина on 07.04.2025.
//

import UIKit

struct Object {
    let name: String
    let images: [UIImage]
    let cost: String
    
    
}

let objects = [Object(name: "Наушники Airpods pro max", images: [UIImage(named: "Max1")!,UIImage(named: "Max2")!, UIImage(named: "Max3")!], cost: "449 $"),
               Object(name: "Ноутбук Macbook Air", images: [UIImage(named: "macbook1")!, UIImage(named: "macbook2")!], cost: "799 $"),
               Object(name: "Наушники Airpods 3rd", images: [UIImage(named: "airpods3rd1")!, UIImage(named: "airpods3rd2")!, UIImage(named: "airpods3rd3")!], cost: "199 $"),
               Object(name: "IPhone 16e", images: [UIImage(named: "iphone141")!], cost: "399 $")]
