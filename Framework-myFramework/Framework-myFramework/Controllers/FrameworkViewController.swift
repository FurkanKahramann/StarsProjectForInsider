//
//  FrameworkViewController.swift
//  Framework-myFramework
//
//  Created by Furkan Kahraman on 31.07.2022.
//

import UIKit
import WebKit

public class FrameworkViewController: UIViewController {
    
    @IBOutlet weak var smallStarButton: UIButton!
    @IBOutlet weak var bigStarButton: UIButton!
    @IBOutlet weak var webView: WKWebView!
    
    private let viewModel = FrameworkViewModel()
    
    open func addStarInterface(){
        print("addStarInterface")
    }
    
    @IBAction func smallButtonClicked(_ sender: Any) {
        append(star: Star(size: Enums.StarSizes.S))
    }
    
    
    @IBAction func bigButtonClicked(_ sender: Any) {
        append(star: Star(size: Enums.StarSizes.B))
    }
    
    private func append(star: Star){
        viewModel.appendStar(star: star,  completion: { (success, message, stars) -> Void in
            if success {
                self.viewModel.toStringAndBrightCount(stars: stars)
            } else {
                self.showAlert(message: message)
            }
        })
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
    }
    
    private func initView(){
        self.title = "Framework VC"
        self.smallStarButton.layer.cornerRadius = 9
        self.bigStarButton.layer.cornerRadius = 9
        viewModel.getUrl(urlString: Constants.webViewUrl, completion: { (success, url, message) -> Void in
            if success {
                self.webView.load(URLRequest(url: url! as URL))
            } else {
                self.smallStarButton.isEnabled = false
                self.bigStarButton.isEnabled = false
                self.showAlert(message: message)
            }
        })
        
    }
    
    private func showAlert(message: String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
}
