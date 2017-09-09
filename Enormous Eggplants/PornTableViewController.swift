//
//  PornTableViewController.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/7/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import UIKit

var porn = [Porn]()

class PornTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBoneafiedEnormousPorn()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return porn.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PornTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PornTableViewCell  else {
            fatalError("The dequeued cell is not an instance of PornTableViewCell.")
        }
        let pornFilm = porn[indexPath.row]
        cell.name.text = pornFilm.title
        cell.poster.image = pornFilm.poster
        cell.rating.text = pornFilm.rating

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let pornReviewsViewController = segue.destination as? PornReviewsViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let selectedPornCell = sender as? PornTableViewCell else {
            fatalError("Unexpected sender: \(sender)")
        }
        
        guard let indexPath = tableView.indexPath(for: selectedPornCell) else {
            fatalError("The selected cell is not being displayed by the table")
        }
        
        let selectedPorn = porn[indexPath.row]
        pornReviewsViewController.porn = selectedPorn
    }
    
    private func loadBoneafiedEnormousPorn(){
        
        // Game of Bones
        var gameOfBonesReviewArray = [PornReview]()
        let gameOfBonesCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Raises the bar for high-fantasy porn")
        gameOfBonesReviewArray += [gameOfBonesCriticReview1]
     
        let gameOfBones = Porn(title: "Game of Bones", poster: #imageLiteral(resourceName: "gameOfBones"), rating: "85%", userScore: "95%", pornReviews: gameOfBonesReviewArray)
        
        // End Game of Bones
        
        
        //Forrest Hump
        var forrestHumpReviewArray = [PornReview]()
        let forrestHumpCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "A weirder, darker, and better movie than its reputation suggests.")
        forrestHumpReviewArray += [forrestHumpCriticReview1]
        
        let forrestHump = Porn(title: "Forrest Hump", poster: #imageLiteral(resourceName: "forrestHump"), rating: "71%", userScore: "14%", pornReviews: forrestHumpReviewArray)
        //End Forrest Hump
        
        //Assablanca
        var assablancaReviewArray = [PornReview]()
        let assablancaCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "A must-fap!")
        assablancaReviewArray += [assablancaCriticReview1]
        let assablanca = Porn(title: "Assablanca", poster: #imageLiteral(resourceName: "assablanca600"), rating: "97%", userScore: "50%", pornReviews: assablancaReviewArray)
        //End Assablanca
        
        //Good Will Humping
        var goodWillHumpingReviewArray = [PornReview]()
        let goodWillHumpingCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "The best thing about Good Will Humping is not in its well-crafted, psychological symmetries but in the just-plain messiness of its cumshots. It's rowdy, it's funny, it has great anal scenes - it rings of life.")
        goodWillHumpingReviewArray += [goodWillHumpingCriticReview1]
        let goodWillHumping = Porn(title: "Good Will Humping", poster: #imageLiteral(resourceName: "good-will-humping600"), rating: "97%", userScore: "70%", pornReviews: goodWillHumpingReviewArray)
        //End Good Will Humping
        
        //Jurassic Pork
        var jurassicPorkReviewArray = [PornReview]()
        let jurassicPorkCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "The most realistic dinosaur dicks I've ever seen!")
        jurassicPorkReviewArray += [jurassicPorkCriticReview1]
        let jurassicPork = Porn(title: "Jurassic Pork", poster: #imageLiteral(resourceName: "menspornjurassic-porkjurassic-pork"), rating: "93%", userScore: "90%", pornReviews: jurassicPorkReviewArray)
        //End Jurassic Pork
        
        porn += [gameOfBones, forrestHump, assablanca, goodWillHumping, jurassicPork]
        
        
    }

}
