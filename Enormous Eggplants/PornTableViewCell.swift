//
//  PornTableViewCell.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/7/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import UIKit

class PornTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var certified: UIImageView!
    @IBOutlet weak var rating: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
