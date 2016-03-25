//
//  TimelineViewController.swift
//  MyInstagram
//
//  Created by DE DPU on 3/25/2559 BE.
//  Copyright © 2559 mycompany. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = self
        
    }
    //MARK : Tab Bar Delegate
    
    extension TimelineViewController: UITabBarControllerDelegate
    {
        func tabBarController(tabBarController: UITabController,
            shouldSelectViewController viewController: UIViewController) -> Bool
        {
            if(viewController is PhotoViewController)
            {
                print("Take Photo")
                return false
            }
            else
            {
                return true
            }
        }
        
    }
  
}
