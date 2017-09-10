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
        cell.reviewIcon.image = pornFilm.reviewIcon

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
        let gameOfBonesCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Daily Rub", review: " It started out great but the towards the end the incest got boring and uninspired.")
        let gameOfBonesUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Spoilers – not everyone makes it to the finish!")
        let gameOfBonesUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "This is the first  porn I've cried too. 5 tissues!")
        gameOfBonesReviewArray += [gameOfBonesCriticReview1, gameOfBonesCriticReview2, gameOfBonesUserReview3, gameOfBonesUserReview4]
     
        let gameOfBones = Porn(title: "Game of Bones", poster: #imageLiteral(resourceName: "gameOfBones"), rating: "85%", userScore: "95%", pornReviews: gameOfBonesReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        
        // End Game of Bones
        
        
        //Forrest Hump
        var forrestHumpReviewArray = [PornReview]()
        let forrestHumpCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "A weirder, darker, and better movie than its reputation suggests.")
        forrestHumpReviewArray += [forrestHumpCriticReview1]
        let forrestHumpCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "Spectacularly moving!  You don't know where it will go next!")
        let forrestHumpUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Too much running not enough intercourse!")
        let forrestHumpUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Jenny never returned the favors!!")
        forrestHumpReviewArray += [forrestHumpCriticReview1, forrestHumpCriticReview2, forrestHumpUserReview3, forrestHumpUserReview4]
        
        let forrestHump = Porn(title: "Forrest Hump", poster: #imageLiteral(resourceName: "forrestHump"), rating: "71%", userScore: "14%", pornReviews: forrestHumpReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        //End Forrest Hump
        
        //Assablanca
        var assablancaReviewArray = [PornReview]()
        let assablancaCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "A must-fap!")
        let assablancaCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "An instant classic!")
        let assablancaUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "I can't get into old movies.")
        let assablancaUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "It moved me to tears while I came!")
        assablancaReviewArray += [assablancaCriticReview1, assablancaCriticReview2, assablancaUserReview3, assablancaUserReview4]
        let assablanca = Porn(title: "Assablanca", poster: #imageLiteral(resourceName: "assablanca600"), rating: "97%", userScore: "50%", pornReviews: assablancaReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        //End Assablanca
        
        //Good Will Humping
        var goodWillHumpingReviewArray = [PornReview]()
        let goodWillHumpingCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "The best thing about Good Will Humping is not in its well-crafted, psychological symmetries but in the just-plain messiness of its cumshots. It's rowdy, it's funny, it has great anal scenes - it rings of life.")
        let goodWillHumpingCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "The film succeeds not because of the cumshot, but as a chain of smaller moments that glimmer in their minuscule perfection.")
        let goodWillHumpingUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "So smart and still can't please a woman.")
        let goodWillHumpingUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "A crowd-pleaser, with bags of cum to spare.")
        
        goodWillHumpingReviewArray += [goodWillHumpingCriticReview1, goodWillHumpingCriticReview2, goodWillHumpingUserReview3, goodWillHumpingUserReview4]
        let goodWillHumping = Porn(title: "Good Will Humping", poster: #imageLiteral(resourceName: "good-will-humping600"), rating: "97%", userScore: "70%", pornReviews: goodWillHumpingReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        //End Good Will Humping
        
        //Jurassic Pork
        var jurassicPorkReviewArray = [PornReview]()
        let jurassicPorkCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "The most realistic dinosaur dicks I've ever seen!")
        let jurassicPorkCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "The cumshots from the dinosaurs are some of the best I've ever seen!")
        let jurassicPorkUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Holy fucking shit, it's a dinosaur dick!")
        let jurassicPorkUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "I came, I saw, I came again!")
        jurassicPorkReviewArray += [jurassicPorkCriticReview1, jurassicPorkCriticReview2, jurassicPorkUserReview3, jurassicPorkUserReview4]
        let jurassicPork = Porn(title: "Jurassic Pork", poster: #imageLiteral(resourceName: "menspornjurassic-porkjurassic-pork"), rating: "93%", userScore: "90%", pornReviews: jurassicPorkReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        //End Jurassic Pork
        
        //Ten Inch Mutant
        var tenInchMutantReviewArray = [PornReview]()
        let turtleTenCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Characters lacked any real gerth. They should have casted me.")
        let turtleTenCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Daily Rub", review: "The shells blocked most of the good angles, but the fight scenes add another level to porn.")
        let turtleTenUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Disappointed. They aren't real turtles.")
        let turtleTenUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "I would love to disappoint April O'Neal so bad!")
        tenInchMutantReviewArray += [turtleTenCriticReview1, turtleTenCriticReview2, turtleTenUserReview3, turtleTenUserReview4]
        let tenInchMutantNinjaTurtles = Porn(title: "Ten Inch Mutant Ninja Turtles", poster: #imageLiteral(resourceName: "ninjaTurtles"), rating: "12%", userScore: "22%", pornReviews: tenInchMutantReviewArray, reviewIcon: #imageLiteral(resourceName: "Pickle-29x29"))
        //End Ten Inch Mutant
        
        // Tiger’s Wood
        var tigerWoodReviewArray = [PornReview]()
        let tigerWoodCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: " A swing and a miss! The young ones always try too hard.")
        let tigerWoodCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: " A hole in one! I may be the only one to like the not so subtle golf jokes.")
        let tigerWoodUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Career ruining movie for this actor. Clearly was faking it.")
        let tigerWoodUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "This movie is uninspired. I kept waiting for him to pull out the 9 iron but he only used the putter.  No tissue")
        
        tigerWoodReviewArray += [tigerWoodCriticReview1, tigerWoodCriticReview2, tigerWoodUserReview3, tigerWoodUserReview4]
        
        let tigerWood = Porn(title: "Tiger's Wood", poster: #imageLiteral(resourceName: "porn-titles-11") , rating: "33%", userScore: "42%", pornReviews: tigerWoodReviewArray, reviewIcon: #imageLiteral(resourceName: "Pickle-29x29"))
        //End Tiger’s Wood
        
        //Ass Ventura
        var assVenturaReviewArray = [PornReview]()
        let assVenturaCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Not funny.  Not sexy.  A total waste of time.")
        let assVenturaCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Daily Rub", review: "The lead male just does a terrible job.  He spends most of the moving struggling to get it up.")
        let assVenturaUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "I was disaapointed.  Ass Ventura didn't fuck any pets!")
        let assVenturaUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Hilarious!")
        
        assVenturaReviewArray += [assVenturaCriticReview1, assVenturaCriticReview2, assVenturaUserReview3, assVenturaUserReview4]
        
        let assVentura = Porn(title: "Ass Ventura", poster: #imageLiteral(resourceName: "assventura600") , rating: "46%", userScore: "57%", pornReviews: assVenturaReviewArray, reviewIcon: #imageLiteral(resourceName: "Pickle-29x29"))

        //End Ass Ventura
        
        //Bitanic
        var bitanicReviewArray = [PornReview]()
        let bitanicCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Cameron has devised a tender love story that serves as the main focus of Titanic's storyline, and it works beautifully.")
        let bitanicCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "If computer-generated special effects have overpowered human-generated cumshots, Cameron seizes that dangerously cold technology and recasts it as dream and delirium, profoundly human in its sources and longings.")
        let bitanicUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Dick-berg dead ahead!")
        let bitanicUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Raw.  Emotional.  Hot.")
        
        bitanicReviewArray += [bitanicCriticReview1, bitanicCriticReview2, bitanicUserReview3, bitanicUserReview4]
        
        let bitanic = Porn(title: "Bitanic", poster: #imageLiteral(resourceName: "bitanic600") , rating: "88%", userScore: "69%", pornReviews: bitanicReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))

        //End Bitanic
        
        //Inrearendence Day
        var inrearendenceDayReviewArray = [PornReview]()
        let inrearendenceDayCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Splendidly cheesy entertainment.")
        let inrearendenceDayCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "If I were a 10-year-old boy, I'd probably think it was the coolest movie going.")
        let inrearendenceDayUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Good film. A bit too unrealistic for my taste but good enough.")
        let inrearendenceDayUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "It works, for all it is worth, though not much can be said of any depth or realism, it is a sci-fi flick with good old sci-fi goodness.")
        
        inrearendenceDayReviewArray += [inrearendenceDayCriticReview1, inrearendenceDayCriticReview2, inrearendenceDayUserReview3, inrearendenceDayUserReview4]
        let inrearendenceDay = Porn(title: "Inrearendence Day", poster: #imageLiteral(resourceName: "inrearendence-day600") , rating: "60%", userScore: "75%", pornReviews: inrearendenceDayReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))

        //End Inrearendence Day
        
        //Pocahotass
        var pocahotassReviewArray = [PornReview]()
        let pocahotassCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "The film may take you by surprise with its quick ending, running only 76 minutes before the credits roll. I wanted more both times I saw it.")
        let pocahotassCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Daily Rub", review: "Forgettable.")
        let pocahotassUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "For the past two years, I've had a hankering to rewatch Pocahotass to see if my childhood love for it still stands, and despite its glaring historical inaccuracies with Pocahontas's and John Smith's anal scene, boy does it truly hold up!")
        let pocahotassUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Fine for kids; just don't expect a history lesson.")
        
        pocahotassReviewArray += [pocahotassCriticReview1, pocahotassCriticReview2, pocahotassUserReview3, pocahotassUserReview4]
        let pocahotass = Porn(title: "Pocahotass", poster: #imageLiteral(resourceName: "pocahotass-600") , rating: "57%", userScore: "64%", pornReviews: pocahotassReviewArray, reviewIcon: #imageLiteral(resourceName: "Pickle-29x29"))
        //End Pocahotass
        
        //Start Sexbusters
        var sexbustersReviewArray = [PornReview]()
        let sexbustersCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "...an erotic yet consistently entertaining summer blockbuster...")
        let sexbustersCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "Whoever thought of having evil's final manifestation take the form of a 100-ft. penis deserves the rational mind's eternal gratitude.")
        let sexbustersUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Sexbusters stands as one of the best pornos out there. It is hilarious in almost every sense of the word, even if not in the conventional way, and it never falls short with the cheesy cumshots. It can be genuinely shocking at times but that is taken away")
        let sexbustersUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "It's almost impossible not to cum while watching it.")
        
        sexbustersReviewArray += [sexbustersCriticReview1, sexbustersCriticReview2, sexbustersUserReview3, sexbustersUserReview4]
        let sexbusters = Porn(title: "Sexbusters", poster: #imageLiteral(resourceName: "porn-titles-4") , rating: "97%", userScore: "88%", pornReviews: sexbustersReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))

        //End Sexbusters
        
        //Start Womb Raider
        var wombRaiderReviewArray = [PornReview]()
        let wombRaiderCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "A jerky, fragmented tale that jumps from one erotic location to the next without any explanation or flow.")
        let wombRaiderCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "Daily Rub", review: "Loud, banal, empty, frenzied, plasticized, flavorless, drab, violent in a bloodless way and sexy in a sexless way.")
        let wombRaiderUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "In the department of numbing ineptitude, the pacing runs a neck-and-neck race with the dialogue.")
        let wombRaiderUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Some great anal sequences, but not much else.")
        
        wombRaiderReviewArray += [wombRaiderCriticReview1, wombRaiderCriticReview2, wombRaiderUserReview3, wombRaiderUserReview4]
        let wombRaider = Porn(title: "Womb Raider", poster: #imageLiteral(resourceName: "porn-titles-6") , rating: "20%", userScore: "47%", pornReviews: wombRaiderReviewArray, reviewIcon: #imageLiteral(resourceName: "Pickle-29x29"))

        //End Womb Raider
        
        //John and Kate Fuck 8
        var johnAndKateReviewArray = [PornReview]()
        let johnAndKateCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Top quality gang bang action.")
        let johnAndKateCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "LTLC has really outdone themselves.")
        let johnAndKateUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "John and Kate are the real stars of the show")
        let johnAndKateUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Nothing else like it.")
        
        johnAndKateReviewArray += [johnAndKateCriticReview1, johnAndKateCriticReview2, johnAndKateUserReview3, johnAndKateUserReview4]
        let johnAndKateFuck8 = Porn(title: "John and Kate Fuck 8", poster: #imageLiteral(resourceName: "porn-titles-10") , rating: "70%", userScore: "66%", pornReviews: johnAndKateReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        //End John and Kate Fuck 8
        
        //XXXorcist
        var xxxorcistReviewArray = [PornReview]()
        let xxxorcistCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "The XXXorcist, with its excellent cast, mounting intensity, and ingeniously constructed surprises, is still a commanding achievement.")
        let xxxorcistCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "The XXXorcist, like most memorable porn movies, gains its power from the way it mixes opposites: new-style realism and sexual radicalism, old-style oral and anal.")
        let xxxorcistUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "A work of porn in its own league.")
        let xxxorcistUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "User", review: "Takes its audience for a ride, spewing it out the other end.")
        
        xxxorcistReviewArray += [xxxorcistCriticReview1, xxxorcistCriticReview2, xxxorcistUserReview3, xxxorcistUserReview4]
        let xxxorcist = Porn(title: "The XXXorcist", poster: #imageLiteral(resourceName: "porn-titles-13") , rating: "86%", userScore: "87%", pornReviews: xxxorcistReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))
        //End XXXorcist
        
        //Start Honey I Blew
        var blewEverybodyReviewArray = [PornReview]()
        let blewEverybodyCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "Sterling entertainment...")
        let blewEverybodyCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "As sweet, straightforward and funny as its title.")
        let blewEverybodyUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Two-dimensional boredom.")
        let blewEverybodyUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "One of the worst live-action flicks from the '80s.")
        
        blewEverybodyReviewArray += [blewEverybodyCriticReview1, blewEverybodyCriticReview2, blewEverybodyUserReview3, blewEverybodyUserReview4]
        let blewEverybody = Porn(title: "Honey, I Blew Everybody", poster: #imageLiteral(resourceName: "porn-titles-14") , rating: "75%", userScore: "53%", pornReviews: blewEverybodyReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))

        //End Honey I Blew
        
        //Start Edward Penishands
        var edwardPenishandsReviewArray = [PornReview]()
        let edwardPenishandsCriticReview1 = PornReview(reviewerName: "Ron Jeremy", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Footlong Magazine", review: "A delightful and delicate comic porno.")
        let edwardPenishandsCriticReview2 = PornReview(reviewerName: "John Wiener", reviewerIcon: #imageLiteral(resourceName: "Eggplant"), reviewerMagazineOrTissueRating: "Daily Rub", review: "If you can only watch one porno about a man with penises for hands, watch Edward Penishands.")
        let edwardPenishandsUserReview3 = PornReview(reviewerName: "Joe Humpfree", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "He didn't really cum all that much for having penises for hands..")
        let edwardPenishandsUserReview4 = PornReview(reviewerName: "Tommy Salami", reviewerIcon: #imageLiteral(resourceName: "Pickle-29x29"), reviewerMagazineOrTissueRating: "User", review: "Wasted potential.")
        
        edwardPenishandsReviewArray += [edwardPenishandsCriticReview1, edwardPenishandsCriticReview2, edwardPenishandsUserReview3, edwardPenishandsUserReview4]
        let edwardPenishands = Porn(title: "Edward Penishands", poster: #imageLiteral(resourceName: "porn-titles-21") , rating: "89%", userScore: "91%", pornReviews: edwardPenishandsReviewArray, reviewIcon: #imageLiteral(resourceName: "Eggplant"))

        //End Edward Penishands
        
        porn += [gameOfBones, forrestHump, assablanca, goodWillHumping, jurassicPork, tenInchMutantNinjaTurtles, tigerWood, assVentura, bitanic, inrearendenceDay, pocahotass, sexbusters, wombRaider, johnAndKateFuck8, xxxorcist, blewEverybody, edwardPenishands]
        
        
    }

}
