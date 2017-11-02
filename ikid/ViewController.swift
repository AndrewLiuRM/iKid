//
//  ViewController.swift
//  ikid
//
//  Created by Andrew Liu on 10/31/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Store Jokes
    public var call:String = ""
    public var data:[String: Joke] = [:]
    
    // Set unwind destinition.
    @IBAction func goHome(unwindSegue: UIStoryboardSegue) {}
    
    // PerformSegue when button clicked.
    @IBAction func navigateClicked(_ sender: UIBarButtonItem) {
        NSLog("clicked \(sender.title)")
        call = sender.title!
        self.performSegue(withIdentifier: "JokeSegue", sender: self)
    }
    
    // Prepare to pass model to Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is JokeViewController
        {
            NSLog("title: \(call)")
            let vc = segue.destination as? JokeViewController
            vc?.data = data[call]
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data["Good"] = Joke.init(type: "Good", content: "I went to the zoo the other day.", punchline: "It was empty, except for a single dog.......(It is not good, it's sad.....")
        data["Pun"] = Joke.init(type: "Pun", content: "How much room is needed for fungi to grow?", punchline: "As mushroom as possible.")
        data["Dad"] = Joke.init(type: "Dad", content: " What’s Forrest Gump’s password?", punchline: "1forrest1")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

