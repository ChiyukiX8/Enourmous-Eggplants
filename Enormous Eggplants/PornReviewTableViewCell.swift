//
//  PornReviewTableViewCell.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/9/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import UIKit

class PornReviewTableViewCell: UITableViewCell {

    
    @IBOutlet weak var reviewerIcon: UIImageView!
    @IBOutlet weak var reviewerName: UILabel!
    @IBOutlet weak var reviewerMagazineOrTissueRating: UILabel!
    @IBOutlet weak var review: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
