//
//  JokeTableViewController.swift
//  Joke_Bank
//
//  Created by Jayce Azua on 1/4/19.
//  Copyright © 2019 Jayce Azua. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes = ["Dad Jokes", "Pop Culture", "Politics", "Ya Momma"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // HOW MANY?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    // WHAT GOES INSIDE?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
        let cell = UITableViewCell()
        
        cell.textLabel?.text = jokes[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDefinitionViewController {
            if let selectedJoke = sender as? String {
                jokeVC.joke = selectedJoke
            }
        }
    }
 }
