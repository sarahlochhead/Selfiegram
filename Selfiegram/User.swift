//
//  User.swift
//  Selfiegram
//
//  Created by Sarah Lochhead on 2017-11-13.
//  Copyright © 2017 Sarah Lochhead. All rights reserved.
//

import Foundation
import UIKit

class User {
    var userName: String
    var profileImage: UIImage
    
    init(aUserName: String, aProfileImage: UIImage) {
        self.userName = aUserName
        self.profileImage = aProfileImage
    }
}

