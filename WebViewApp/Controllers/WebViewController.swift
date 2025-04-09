//
//  WebViewController.swift
//  WebViewApp
//
//  Created by Александра Аришина on 09.04.2025.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    var object: Object?
    var urlObj: URL?
    
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var toolbar: UIToolbar!
    @IBOutlet weak var WKView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadRequest()
    }
    
    
    private func loadRequest() {
        guard let obj = object else {return}
        guard let url = URL(string: obj.http) else {return}
        self.urlObj = url
        let urlRequest = URLRequest(url: url)
        
        WKView.load(urlRequest)
        
        WKView.navigationDelegate = self
        activityIndicator.isHidden = false
        self.activityIndicator.startAnimating()
        
        
    }
    
    @IBAction func backButtonAction(_ sender: UIBarButtonItem) {
        if WKView.canGoBack {
            WKView.goBack()
        }
    }
    
    @IBAction func forwardButtonAction(_ sender: UIBarButtonItem) {
        if WKView.canGoForward {
            WKView.goForward()
        }
    }
    
    @IBAction func shareButtonAction(_ sender: UIBarButtonItem) {
        let avc = UIActivityViewController(activityItems: [urlObj!], applicationActivities: nil)
        
        self.present(avc, animated: true)
        
    }
    
    @IBAction func reloadButtonAction(_ sender: UIBarButtonItem) {
        WKView.reload()
    }
}




extension WebViewController: WKNavigationDelegate{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
        backButton.isEnabled = webView.canGoBack
        forwardButton.isEnabled = webView.canGoForward
    }
}
