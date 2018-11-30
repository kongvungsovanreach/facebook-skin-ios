//
//  ViewController.swift
//  FacebookHomework
//
//  Created by Kong Vungsovanreach on 11/30/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var bottomTabbar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomTabbar.delegate = self
        
//        navigatorConfig()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func navigatorConfig() {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 50/255, green: 109/255, blue: 252/255, alpha: 1)
        navigationController?.navigationBar.tintColor = .red
//            UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
    }


}


extension ViewController : UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        print(item.)
    }
}
