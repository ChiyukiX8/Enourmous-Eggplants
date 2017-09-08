//
//  Porn.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/7/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import Foundation
import UIKit

class Porn {
    var title: String
    var poster: UIImage
    var rating: String
    
    init(title: String, poster: UIImage?, rating: String){
        self.title = title
        self.poster = poster!
        self.rating = rating
    }
}
