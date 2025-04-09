//
//  StartViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 09.04.2025.
//

import UIKit

class StartViewController: UIViewController {

    var timer = Timer()
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var imageViewLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewLogo.alpha = 0.0
        UIView.animate(withDuration: 6) {
            self.imageViewLogo.alpha = 1.0
        }
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(startView), userInfo: nil, repeats: true)
       
    }
    
    @objc func startView() {
        
        if progressView.progress != 1.0 {
            progressView.progress += 0.1 / 1.0
        } else if progressView.progress == 1.0 {
            timer.invalidate()
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let nextScreen = storyboard.instantiateViewController(identifier: "TabBarVC") as? TabBarViewController else {return}
            nextScreen.modalPresentationStyle = .fullScreen
            self.present(nextScreen, animated: true)
        }
    }

}
