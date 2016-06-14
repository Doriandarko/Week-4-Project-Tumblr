//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Pietro Schirano on 6/6/16.
//  Copyright © 2016 Pietro Schirano. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!

    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    @IBOutlet weak var popup: UIImageView!
    
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    

    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
      
        if selectedIndex == 1 {
            popup.hidden = true
        } else {
            popup.hidden = false
        }
    }
    

    
    
    @IBAction func didPressCompose(sender: AnyObject) {
        performSegueWithIdentifier("composeSegue", sender: self)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard  = UIStoryboard(name: "Main", bundle: nil)
        
       
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]

      
        buttons = [homeButton, searchButton, accountButton, trendingButton]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
        let translation = CGAffineTransformMakeTranslation(0, -6)
        UIView.animateWithDuration(1.0, delay: 0, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.popup.transform = translation
            }) { (Bool) -> Void in
                
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
