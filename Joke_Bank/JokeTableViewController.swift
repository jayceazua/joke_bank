//
//  JokeTableViewController.swift
//  Joke_Bank
//
//  Created by Jayce Azua on 1/4/19.
//  Copyright © 2019 Jayce Azua. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes: [Joke] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let joke1 = Joke()
        joke1.title = "Dad Jokes"
        joke1.text = "Q: What do you call a fake noodle?\n\nA: An Impasta."
        let joke2 = Joke()
        joke2.title = "Pop Culture"
        joke2.text = "Q: Do you know who was the first black guy to admit he is the father?\n\nA: Darth Vader"
        let joke3 = Joke()
        joke3.title = "Politics"
        joke3.text = "Q: Have you heard about McDonald’s new Obama Value Meal?\n\nA: Order anything you like and the guy behind you has to pay for it."
        let joke4 = Joke()
        joke4.title = "Ya Momma"
        joke4.text = "Your momma is so ugly she made One Direction go another direction."
        
        jokes = [joke1, joke2, joke3, joke4]
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
        
        cell.textLabel?.text = jokes[indexPath.row].title

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDefinitionViewController {
            if let selectedJoke = sender as? Joke {
                jokeVC.joke = selectedJoke
            }
        }
    }
 }
