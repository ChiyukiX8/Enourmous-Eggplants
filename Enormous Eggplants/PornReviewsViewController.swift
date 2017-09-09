//
//  PornReviewsViewController.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/9/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import UIKit

class PornReviewsViewController: UIViewController {
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var criticScore: UILabel!
    @IBOutlet weak var userScore: UILabel!
    @IBOutlet weak var reviewTable: UIView!
    

    var porn: Porn?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let porn = porn {
           poster.image = porn.poster
           movieName.text = porn.title
           criticScore.text = porn.rating
           userScore.text = porn.userScore
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let pornReviewTable = segue.destination as? PornReviewsTableViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        pornReviewTable.pornReviews = (porn?.pornReviews)!
        
    }

}
