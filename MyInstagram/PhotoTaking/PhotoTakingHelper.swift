//
//  PhotoTakingHelper.swift
//  MyInstagram
//
//  Created by DE DPU on 3/25/2559 BE.
//  Copyright © 2559 mycompany. All rights reserved.
//

import UIKit

typealias PhotoTakingHelperCallback = UIImage? -> Void

class PhotoTakingHelper: NSObject
{
    //1. Present Action Sheet --> UIAlertController
    //2. Present the Camera or photo libary --> UIImagePickerController
    //3. Return the image --> Callback function
    
    weak var viewController: UIViewController!
    var callback: PhotoTakingHelperCallback
    var imagePickerController: UIImagePickerController?
    
    init(ViewController: UIViewController, callback: PhotoTakingHelperCallback)
    {
        self.viewController = viewController
        self.callback = callback
        
        super.init()
        showPhotoSourceSelection()
        
    }
    
    func shoPhotoSourceSelection()
    {
        let alertController = UIAlertController(title: nil, message: "Where do you want to get your picture from?", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertController(title: "Cancel", style: .Cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        let photoLibaryAction = UIAlertAction(title: "Photo from Libary",style: .Default)
        {
                (ACTION)in
        }
        
        alertController.addAction(photoLibaryAction)
        
        if(UIImagePickerController.isCameraDeviceAvailable(.Rear))
    }
    
    
}
