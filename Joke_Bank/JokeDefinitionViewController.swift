//
//  JokeDefinitionViewController.swift
//  Joke_Bank
//
//  Created by Jayce Azua on 1/4/19.
//  Copyright © 2019 Jayce Azua. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = Joke()

    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke.title
        jokeLabel.text = joke.text
    }
    
}
