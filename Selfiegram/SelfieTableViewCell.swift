//
//  SelfieTableViewCell.swift
//  Selfiegram
//
//  Created by Sarah Lochhead on 2017-11-16.
//  Copyright © 2017 Sarah Lochhead. All rights reserved.
//

import UIKit
import Parse

class SelfieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var selfieImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    var post: Post? {
        
        didSet {
            if let post = post {
                
                selfieImageView.image = nil
                
                let imageFile = post.image
                imageFile.getDataInBackground(block: {(data, error) -> Void in
                    if let data = data {
                        let image = UIImage(data: data)
                        self.selfieImageView.image = image
                    }
                })
                
                usernameLabel.text = post.user.username
                commentLabel.text = post.comment
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }
    
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}
