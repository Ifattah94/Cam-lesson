//
//  ColorSettingsViewController.swift
//  DelegateReview
//
//  Created by C4Q on 12/21/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

//create protocol in place where information will be recieved
protocol setColorVCDelegate: class {
    func changeBackgroundColor(color: UIColor)
    
}



class ColorSettingsViewController: UIViewController {

    
    @IBOutlet weak var firstButton: UIButton!
    
    
    @IBOutlet weak var secondButton: UIButton!
    //delegate that is an instance of the protocol
    weak var delegate: setColorVCDelegate?
    
    
    
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        view.backgroundColor = sender.backgroundColor
        delegate?.changeBackgroundColor(color: sender.backgroundColor!)
        
    }
    
    
    @IBAction func dismissButton(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.layer.borderColor = UIColor.white.cgColor
        //makes button round
        firstButton.layer.borderWidth = 2.0
        firstButton.layer.cornerRadius = firstButton.frame.width / 2
        
        secondButton.layer.borderColor = UIColor.white.cgColor
        //makes button round
        secondButton.layer.borderWidth = 2.0
        secondButton.layer.cornerRadius = secondButton.frame.width / 2

     
    }

   

}
