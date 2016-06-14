//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Pietro Schirano on 6/6/16.
//  Copyright © 2016 Pietro Schirano. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    @IBOutlet weak var backgroundView: UIView!
    
//    var buttons: [UIButton]!
//
//    var delay: NSTimeInterval = 0
    
    var textButtonCenter: CGPoint!
    var photoButtonCenter: CGPoint!
    var quoteButtonCenter: CGPoint!
    var linkButtonCenter: CGPoint!
    var chatButtonCenter: CGPoint!
    var videoButtonCenter: CGPoint!
    
    @IBAction func didTouchNevermind(sender: AnyObject) {
        
        UIView.animateWithDuration(1.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.textButton.center.y -= self.view.frame.height
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.photoButton.center.y -= self.view.frame.height
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.6, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.quoteButton.center.y -= self.view.frame.height
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.8, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.linkButton.center.y -= self.view.frame.height
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.chatButton.center.y -= self.view.frame.height
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.9, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.videoButton.center.y -= self.view.frame.height
            
            }, completion: nil)

        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        
        textButton.center.y += 568
        photoButton.center.y += 568
        quoteButton.center.y += 568
        linkButton.center.y += 568
        chatButton.center.y += 568
        videoButton.center.y += 568
        
//        let buttons = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
        
        // set initial icon y position
//        for button in buttons as! [UIButton] {
//            button.center.y = 568 + button.frame.height / 2
//            
//        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.textButton.center = self.textButtonCenter
            
            }, completion: nil)

        photoButton.center = photoButtonCenter
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.quoteButton.center = self.quoteButtonCenter
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.linkButton.center = self.linkButtonCenter
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.chatButton.center = self.chatButtonCenter
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            
            self.videoButton.center = self.videoButtonCenter
            
            }, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textButtonCenter = textButton.center
        photoButtonCenter = photoButton.center
        quoteButtonCenter = quoteButton.center
        linkButtonCenter = linkButton.center
        chatButtonCenter = chatButton.center
        videoButtonCenter = videoButton.center
        
        backgroundView.backgroundColor = UIColor(red: 0.18, green: 0.27, blue: 0.36, alpha: 0.9)
            
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func presentedViewControllerSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
