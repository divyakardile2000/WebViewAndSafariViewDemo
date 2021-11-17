//
//  SecondViewController.swift
//  SafariDemo
//
//  Created by Mac on 07/10/21.
//

import UIKit
import WebKit
class SecondViewController: UIViewController {
    @IBOutlet weak var urlStatusLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    @IBAction func BackBtnAction(_ sender: Any) {
        webView.goBack()

    }
    var urlString : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: urlString ?? ""){
            urlStatusLabel.text = urlString
            let request = URLRequest(url: url)
            webView.load(request)
        }else{
            urlStatusLabel.text = "Invalid Link"
        }
        
    }
    

    
}
