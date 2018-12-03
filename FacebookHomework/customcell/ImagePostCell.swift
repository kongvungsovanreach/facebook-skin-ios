//
//  TextPostCell.swift
//  FacebookHomework
//
//  Created by Kong Vungsovanreach on 12/1/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class ImagePostCell: UITableViewCell {
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!

    @IBOutlet weak var postDateLabel: UILabel!

    @IBOutlet weak var postTextLabel: UILabel!

    @IBOutlet weak var reactionAmountLabel: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var commentShareLabel: UILabel!
    @IBOutlet weak var commentTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        profilePictureImageView.layer.cornerRadius = profilePictureImageView.frame.height / 2
        profilePictureImageView.layer.masksToBounds = true
        commentTextField.layer.masksToBounds = true
        commentTextField.layer.cornerRadius = 15.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
