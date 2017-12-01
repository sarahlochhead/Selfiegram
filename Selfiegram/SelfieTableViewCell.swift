//
//  SelfieTableViewCell.swift
//  Selfiegram
//
//  Created by Sarah Lochhead on 2017-11-16.
//  Copyright © 2017 Sarah Lochhead. All rights reserved.
//

import UIKit

class SelfieTableViewCell: UITableViewCell {

    @IBOutlet weak var selfieImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
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
