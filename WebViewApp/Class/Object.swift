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
    let http: String
    
    
}

let objects = [Object(name: "Наушники Airpods Max", images: [UIImage(named: "Max1")!,UIImage(named: "Max2")!, UIImage(named: "Max3")!], cost: "549 $", http: "https://www.apple.com/airpods-max/"),
               Object(name: "Ноутбук Macbook Air", images: [UIImage(named: "macbook1")!, UIImage(named: "macbook2")!,UIImage(named: "macbook3")!], cost: "899 $", http: "https://www.apple.com/macbook-air/"),
               Object(name: "Наушники Airpods 4rd", images: [UIImage(named: "airpods3rd1")!, UIImage(named: "airpods3rd2")!, UIImage(named: "airpods3rd3")!], cost: "199 $", http: "https://www.apple.com/airpods-4/"),
               Object(name: "IPhone 15", images: [UIImage(named: "iphone141")!,UIImage(named: "iphone142")!,UIImage(named: "iphone143")!], cost: "699 $", http: "https://www.apple.com/shop/buy-iphone/iphone-15")]
