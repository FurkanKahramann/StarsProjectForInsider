//
//  ViewController.swift
//  Framework-myApplication
//
//  Created by Furkan Kahraman on 31.07.2022.
//

import UIKit
import Framework_myFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let interface = FrameworkViewController()
        interface.addStarInterface()
    }

    @IBAction func openFrameworkVCButton(_ sender: Any) {
        let s = UIStoryboard (name: "FrameworkViewController", bundle: Bundle(for: FrameworkViewController.self))
            let vc = s.instantiateInitialViewController()!
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

