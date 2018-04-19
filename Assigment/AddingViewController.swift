//
//  AddingViewController.swift
//  Assigment
//
//  Created by SWUCOMPUTER on 2018. 4. 19..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class AddingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    @IBOutlet var playListLabel: UILabel!
    @IBOutlet var songTitleLabel: UILabel!
    var info_1:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let playListString = info_1{
            songTitleLabel.text=playListString
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        playListLabel.text = textField.text
        return true
    }
    
}

