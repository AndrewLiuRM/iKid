//
//  PunchlineViewController.swift
//  ikid
//
//  Created by Andrew Liu on 11/1/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//

import UIKit

class PunchlineViewController: UIViewController {
    @IBOutlet weak var punchlineLable: UILabel!
    
    var data:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("load")
        NSLog(data)
        punchlineLable.text = data
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
