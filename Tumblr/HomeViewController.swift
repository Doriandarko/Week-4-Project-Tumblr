//
//  HomeViewController.swift
//  Tumblr
//
//  Created by Pietro Schirano on 6/6/16.
//  Copyright © 2016 Pietro Schirano. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    @IBAction func didPressLogin(sender: UIButton) {
        self.performSegueWithIdentifier("LoginSegue", sender: self)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
