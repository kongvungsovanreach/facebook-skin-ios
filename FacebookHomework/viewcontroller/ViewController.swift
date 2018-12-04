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
    let posts : [FacebookPost] = PostSampleData.posts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableConfig(postTableView)
    }

    func tableConfig(_ table : UITableView) {
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "TextPostCell", bundle: nil), forCellReuseIdentifier: "TextPostReusableCell")
        table.register(UINib(nibName: "ImagePostCell", bundle: nil), forCellReuseIdentifier: "ImagePostReusableCell")
        table.allowsSelection = false
        table.showsVerticalScrollIndicator = false
    }

    func textCellConfig(_ cell : TextPostCell, _ row : Int) {
        cell.profilePictureImageView.image = posts[row].profilePicture
        cell.profileNameLabel.text = posts[row].profileName
        cell.postDateLabel.text = posts[row].postDate
        cell.locationLabel.text = posts[row].location
        cell.postTextLabel.text = posts[row].postText
        cell.reactionAmountLabel.text = "\(String(describing: posts[row].reactionAmount!))"
        cell.commentShareLabel.text = "\(String(describing: posts[row].commentAmount!)) Comment \(String(describing: posts[row].shareAmount!)) Share"
        if posts[row].postText.count < 42 {
            cell.postTextLabel.font = cell.postTextLabel.font.withSize(30.0)
        }
    }
    func imageCellConfig(_ cell : ImagePostCell, _ row : Int) {
        cell.profilePictureImageView.image = posts[row].profilePicture
        cell.profileNameLabel.text = posts[row].profileName
        cell.postDateLabel.text = posts[row].postDate
        cell.locationLabel.text = posts[row].location
        cell.postTextLabel.text = posts[row].postText
        cell.photo.image = posts[row].photo
        cell.reactionAmountLabel.text = "\(String(describing: posts[row].reactionAmount!))"
        cell.commentShareLabel.text = "\(String(describing: posts[row].commentAmount!)) Comment \(String(describing: posts[row].shareAmount!)) Share"
        if posts[row].postText.count < 42 {
            cell.postTextLabel.font = cell.postTextLabel.font.withSize(30.0)
        }
    }
}



extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if posts[indexPath.row].isTextPost {
            let reusableCell = tableView.dequeueReusableCell(withIdentifier: "TextPostReusableCell", for: indexPath) as! TextPostCell
            textCellConfig(reusableCell, indexPath.row)
            return reusableCell
        }else{
            let reusableCell = tableView.dequeueReusableCell(withIdentifier: "ImagePostReusableCell", for: indexPath) as! ImagePostCell
            imageCellConfig(reusableCell, indexPath.row)
            return reusableCell
        }

    }
}
extension ViewController : UITableViewDelegate {

}
