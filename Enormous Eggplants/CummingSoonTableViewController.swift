//
//  CummingSoonTableViewController.swift
//  Enormous Eggplants
//
//  Created by Dan Moore on 9/9/17.
//  Copyright © 2017 Hack-a-thon. All rights reserved.
//

import UIKit

var cummingSoon = [String]()

class CummingSoonTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadCummingSoon()

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
        return cummingSoon.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "CummingSoonTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CummingSoonTableViewCell
            else{
                fatalError("The dequeued cell is not an instance of CummingSoonTableViewCell.")
        }

        let pornTitle = cummingSoon[indexPath.row]
        cell.name.text = pornTitle

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadCummingSoon(){
        cummingSoon += ["2 Pounds of Cum: A Face Odyssey", "Itty Bitty Gang Bang", "Fear and Loathing in My Anus",
        "Schindler's Fist",
        "Black Cock Down",
        "Sex-Men: First Arse",
        "Fatal Erection",
        "The Curious Taste of Benjamin's Butthole",
        "When Harry Ate Sally",
        "Raiders of the lost pootang",
        "A Fistful of Penis",
        "American History XXX",
        "Beverly Hills 9021-Ho!",
        "Big Trouble in Little Vagina",
        "Butch Lesbian and the Lapdance Kid",
        "Bi-Curious George",
        "City Of Anals",
        "Fast Times At Deep Crack High",
        "Charlie's Anals",
        "Free Will Humping",
        "Free Your Willy",
        "For Your Thighs Only",
        "Gangbangs of New York",
        "Little Oral Annie",
        "Little Orphan Anal",
        "Oh Brother, Who Fuck Thou?",
        "Phallus in Wonderland",
        "Piledriving Miss Daisy",
        "Poke-'em All: The Movie",
        "Rebel Without a Condom",
        "Romeo in Juliet",
        "Saturday Night Beaver",
        "Saving Ryan's Privates",
        "Schindler's Fist",
        "The Empire Strokes back",
        "The Slutty Professor",
        "The Sperminator",
        "The Rocky Porno Video Show",
        "The Sexorcist",
        "The Sixth Inch",
        "The Talented Mr. Lickme",
        "The Whore of the Worlds",
        "Throbbin Hood",
        "White Men Can't Hump",
        "Who Reamed Roger Rabbit?",
        "Whore Of The Rings",
        "The Dirty Dozen Inches",
        "Clear and Pleasant Strange",
        "Few Hard Men",
        "Tale of Two Titties",
        "Beaver and Buttface",
        "Cumming to America",
        "Dawson’s Crack",
        "Edward Penishands",
        "Frisky Business",
        "Jurassic Pork",
        "I Cream of Jeannie",
        "Mad Jack Beyond the Thunderbone",
        "Missionary Position: Impossible",
        "Pimped By An Angel",
        "Sex Trek: The Next Penetration",
        "Shitty Shitty Bang Bang",
        "Shagnet",
        "Shaving Ryan’s Privates",
        "Sheepless in Montana",
        "Star Prick – The Next Ejaculation",
        "Spankenstein",
        "Titty Slickers",
        "Top Buns",
        "Twin Cheeks",
        "Twin Peeks",
        "The Little Orphan Tranny",
        "The Loin King",
        "Ram Stroker's Jackula",
        "Cum in 60 Seconds",
        "28 Gays Later",
        "Ally McSqueal",
        "The Porn Identity",
        "Robocock",
        "The Best Rears of Our Lives",
        "Snow White & the Seven Perverts",
        "Mary Potter and the Philosopher's Bone",
        "Cum flew over the hookers chest",
        "The Little Spermaid",
        "A Slut's Life",
        "The Incestibles",
        "Larence of My Labia",
        "Rimming in the n",
        "Dude where's my dildo",
        "White Men Cant hump",
        "Batman in Robin",
        "les jizzerables",
        "Fleshdance",
        "Rumple Forsekin",
        "Sperms of Endearment",
        "Bi-tanic - The Story of Two Girls Going Down...",
        "The Italian Blow-Job",
        "In Deanna's Jeans and the Lust Crusade",
        "The Texas Vibrator Massacre",
        "Jon and Kate Fuck Eight",
        "Dumb and Done Her",
        "There's Something On Mary",
        "The Man Who Fucked Too Much",
        "Willie Wanker and the Fudge Packing Factory",
        "The man with the golden cock",
        "Liciense to jizz on your face",
        "Being john malkovitches cock",
        "Eternal jizz stream of the spotless ballsack"
        ]
    }

}
