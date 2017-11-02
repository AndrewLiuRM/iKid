//
//  JokeViewController.swift
//  ikid
//
//  Created by Andrew Liu on 11/1/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var type: UILabel!
    
    var data:Joke? = nil
    
    // Set unwind destinition.
    @IBAction func Joke(unwindSegue: UIStoryboardSegue) {}

    // Prepare to pass model to Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is PunchlineViewController
        {
            let vc = segue.destination as? PunchlineViewController
            vc?.data = (data?.punchline)!

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("view loaded")
        type.text = data?.type
        content.text = data?.content
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
