//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jake Messenger on 25/03/2017.
//  Copyright © 2017 Jake Messenger. All rights reserved.
//

import UIKit

// create the View Controller. TableView is called "emojiTable"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!

    
    // create the Array called "emojis"
    
    var emojis = ["😃","🤓","🤠","😩","🤔","💩","🎅🏻","😻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
    }
    // count the number of items in the array
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        // fill the positions in the table view with the corresponding positions in the array
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSeque", sender: "🤡")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

