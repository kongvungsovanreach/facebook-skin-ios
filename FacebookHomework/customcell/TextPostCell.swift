//
//  TextPostCell.swift
//  FacebookHomework
//
//  Created by Kong Vungsovanreach on 12/1/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class TextPostCell: UITableViewCell {
    @IBOutlet weak var profilePicture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
        profilePicture.layer.masksToBounds = true

        
//        let mScreenSize = UIScreen.main.bounds
//        let mSeparatorHeight = CGFloat(9.0) // Change height of speatator as you want
//        let mAddSeparator = UIView.init(frame: CGRect(x: 0, y: self.frame.size.height - mSeparatorHeight, width: mScreenSize.width, height: mSeparatorHeight))
//        mAddSeparator.backgroundColor = UIColor(displayP3Red: 192/255, green: 192/255, blue: 192/255, alpha: 1) // Change backgroundColor of separator
//        self.addSubview(mAddSeparator)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
