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
    var photoTakingHelper : PhotoTakingHelper?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = self
        
    }
    
    func takePhoto()
    {
        photoTakingHelper = PhotoTakingHelper(viewController: self.tabBarController!)
        {
            (image:UIImage?)in
            // do nothing
        }
        
        //PhotoTakingHelper(viewController: self.tabBarController, callback: {(image:UIImage?)in})
    }
}
    //MARK : Tab Bar Delegate
    
extension TimelineViewController: UITabBarControllerDelegate
{
    func tabBarController(tabBarController: UITabBarController,
        shouldSelectViewController viewController: UIViewController) -> Bool
        {
            if(viewController is PhotoViewController)
            {
                takePhoto()
                return false
            }
            else
            {
                return true
            }
        }
        
}
  

