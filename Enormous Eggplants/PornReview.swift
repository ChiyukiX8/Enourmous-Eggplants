//
//  PornReview.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/9/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import Foundation
import UIKit

class PornReview {
    var reviewerName: String
    var reviewerIcon: UIImage
    var reviewerMagazineOrTissueRating: String
    var review: String
    
    init(reviewerName: String, reviewerIcon: UIImage?, reviewerMagazineOrTissueRating: String, review: String){
        self.reviewerName = reviewerName
        self.reviewerIcon = reviewerIcon!
        self.reviewerMagazineOrTissueRating = reviewerMagazineOrTissueRating
        self.review = review
    }
}
