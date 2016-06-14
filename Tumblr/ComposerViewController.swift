//
//  ComposerViewController.swift
//  Tumblr
//
//  Created by Pietro Schirano on 6/14/16.
//  Copyright © 2016 Pietro Schirano. All rights reserved.
//

import UIKit

class ComposerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTap(sender: AnyObject) {
        
        
         dismissViewControllerAnimated(true, completion: nil)
    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
