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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadBoneafiedEnormousPorn(){
     
        let gameOfBones = Porn(title: "Game of Bones", poster: #imageLiteral(resourceName: "gameOfBones"), rating: "85%", userScore: "95%")
        let forrestHump = Porn(title: "Forrest Hump", poster: #imageLiteral(resourceName: "forrestHump"), rating: "71%", userScore: "14%")
        let assablanca = Porn(title: "Assablanca", poster: #imageLiteral(resourceName: "assablanca600"), rating: "97%", userScore: "50%")
        let goodWillHumping = Porn(title: "Good Will Humping", poster: #imageLiteral(resourceName: "good-will-humping600"), rating: "97%", userScore: "70%")
        let jurassicPork = Porn(title: "Jurassic Pork", poster: #imageLiteral(resourceName: "menspornjurassic-porkjurassic-pork"), rating: "93%", userScore: "90%")
        
        porn += [gameOfBones, forrestHump, assablanca, goodWillHumping, jurassicPork]
        
        
    }

}
