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
        commentTextField.layer.cornerRadius = 12.0

        
        let mScreenSize = UIScreen.main.bounds
        let mSeparatorHeight = CGFloat(9.0) // Change height of speatator as you want
        let mAddSeparator = UIView.init(frame: CGRect(x: 0, y: self.frame.size.height - mSeparatorHeight, width: mScreenSize.width, height: mSeparatorHeight))
        mAddSeparator.backgroundColor = UIColor(displayP3Red: 192/255, green: 192/255, blue: 192/255, alpha: 1) // Change backgroundColor of separator
        self.addSubview(mAddSeparator)
//         Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
