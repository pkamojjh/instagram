//
//  PostCell.swift
//  instagram
//
//  Created by Pallav Kamojjhala on 2/6/18.
//  Copyright © 2018 Pallav Kamojjhala. All rights reserved.
//

import UIKit
import Parse
import ParseUI



class PostCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var img2View: PFImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!

    var post: PFObject! {
        didSet {
            self.usernameLabel.text = post["author"] as? String
            self.dateLabel.text = "\(post.createdAt!)"
            self.img2View.file = post["media"] as? PFFile
            self.captionLabel.text = post["caption"] as? String
            self.img2View.loadInBackground()
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

}
