//
//  Post.swift
//  Selfiegram
//
//  Created by Sarah Lochhead on 2017-11-13.
//  Copyright © 2017 Sarah Lochhead. All rights reserved.
//

import Foundation
import UIKit

class Post {
    let image: UIImage
    let user: User
    let comment: String
    
    init(image: UIImage, user: User, comment: String) {
        self.image = image
        self.user = user
        self.comment = comment
    }
}
