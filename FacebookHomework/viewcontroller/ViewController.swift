//
//  ViewController.swift
//  FacebookHomework
//
//  Created by Kong Vungsovanreach on 11/30/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var postTableView: UITableView!
    
    @IBOutlet weak var bottomTabbar: UITabBar!
    override func viewWillAppear(_ animated: Bool) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        postTableView.separatorStyle = 
        postTableView.dataSource = self
        postTableView.delegate = self
        postTableView.register(UINib(nibName: "TextPostCell", bundle: nil), forCellReuseIdentifier: "TextPostReusableCell")
//
        postTableView.rowHeight = UITableView.automaticDimension
        postTableView.estimatedRowHeight = UITableView.automaticDimension
    }


}



extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reusableCell = tableView.dequeueReusableCell(withIdentifier: "TextPostReusableCell", for: indexPath) as! TextPostCell
        return reusableCell
    }
}
extension ViewController : UITableViewDelegate {

}
