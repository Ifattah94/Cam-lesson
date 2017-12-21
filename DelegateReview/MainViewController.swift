//
//  ViewController.swift
//  DelegateReview
//
//  Created by C4Q on 12/21/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

//conforming to the protocol means we need the method and the data will be coming into this view controller
class MainViewController: UIViewController, setColorVCDelegate {
    func changeBackgroundColor(color: UIColor) {
        print("recieved message from delegate")
        view.backgroundColor = color
    }
    

    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController {
            let secondVC = nav.childViewControllers.first as! ColorSettingsViewController
            secondVC.delegate = self
        }
    }
    
    
    
    
    

}

