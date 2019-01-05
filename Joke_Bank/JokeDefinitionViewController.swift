//
//  JokeDefinitionViewController.swift
//  Joke_Bank
//
//  Created by Jayce Azua on 1/4/19.
//  Copyright © 2019 Jayce Azua. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = ""

    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke
        
        if joke == "Dad Jokes" {
            jokeLabel.text = "Q: What do you call a fake noodle?\n\nA: An Impasta."
        }
        
        if joke == "Pop Culture" {
            jokeLabel.text = "Q: Do you know who was the first black guy to admit he is the father?\n\nA: Darth Vader"
        }
        
        if joke == "Politics" {
            jokeLabel.text = "Q: Have you heard about McDonald’s new Obama Value Meal?\n\nA: Order anything you like and the guy behind you has to pay for it."
        }
        
        if joke == "Ya Momma" {
            jokeLabel.text = "Your momma is so ugly she made One Direction go another direction."
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
