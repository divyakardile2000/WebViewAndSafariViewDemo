//
//  ViewController.swift
//  SafariDemo
//
//  Created by Mac on 07/10/21.
//
import UIKit
import WebKit
import SafariServices
class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var linkTextField : UITextField!
   
//MARK: webview
    @IBAction func webBtnAction(_ sender: Any) {
        if let Vc2Obj = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as? SecondViewController{
            Vc2Obj.urlString = linkTextField.text
            navigationController?.pushViewController(Vc2Obj, animated: true)
        }else{
            print("second view controller not found")
        }
    }
    
//MARK: safari
    
    @IBAction func safariBtnAction(_ sender: Any) {
        showSafariViewController()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: SFSafariViewControllerDelegate{
    func showSafariViewController(){
        if let url = URL(string: linkTextField.text ?? ""){
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            let vc = SFSafariViewController.init(url: url, configuration: config)
            present(vc, animated: true)
        }else{
            print("invalid url")
        }
    }
}

