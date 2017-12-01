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
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        if let post = post,
            let user = PFUser.current(){
            if sender.isSelected {
                post.likes.add(user)
                
                post.saveInBackground(block: {(success, error) -> Void in
                    if success {
                        print ("like from user successfully saved")
                    }
                    else{
                        print ("error is \(error)")
                    }
                })
            }
            
            else { // like button has been deselected and we should remove the like
                
                // PFRelation also has a useful method called removeObject that removes
                // the element if there is an element to be removed.
                post.likes.remove(user)
                post.saveInBackground(block: { (success, error) -> Void in
                    if success {
                        print("like from user successfully removed")
                    }else{
                        print("error is \(error)")
                    }
                })
                
            }
            
            
            
            
        }
    }
}
