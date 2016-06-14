//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Pietro Schirano on 6/6/16.
//  Copyright © 2016 Pietro Schirano. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var trendingScrollView: UIScrollView!
    @IBOutlet weak var trendingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingScrollView.contentSize = trendingImageView.image!.size
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
