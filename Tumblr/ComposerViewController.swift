//
//  ComposerViewController.swift
//  Tumblr
//
//  Created by Pietro Schirano on 6/14/16.
//  Copyright © 2016 plainspace. All rights reserved.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
