//
//  FacebookPost.swift
//  FacebookHomework
//
//  Created by Kong Vungsovanreach on 12/2/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit
class FacebookPost {
    let profilePicture : UIImage!
    let profileName : String!
    let postDate : String!
    let location : String!
    let postText : String!
    let photo : UIImage!
    let reactionAmount : Int!
    let commentAmount : Int!
    let shareAmount : Int!
    let isTextPost : Bool!
    init(_ profilePicture : UIImage,
         _ profileName : String,
         _ postDate : String,
         _ location : String,
         _ postText : String,
         _ photo : UIImage?,
         _ reactionAmount : Int,
         _ commentAmount : Int,
         _ shareAmount : Int,
         _ isTextPost : Bool) {
        self.profilePicture = profilePicture
        self.profileName = profileName
        self.postDate = postDate
        self.location = location
        self.postText = postText
        self.photo = photo
        self.reactionAmount = reactionAmount
        self.commentAmount = commentAmount
        self.shareAmount = shareAmount
        self.isTextPost = isTextPost
    }
}
