//
//  ViewController.swift
//  Assigment
//
//  Created by SWUCOMPUTER on 2018. 4. 19..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet var pickerSong: UIPickerView!
    
    
    let genderArray: Array<String> = ["여자", "남자" ]
    let genreArray: Array<String> = ["발라드", "댄스"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return genderArray.count
        }
        else {
            return genreArray.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return genderArray[row]
        }
        else {
            return genreArray[row]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if segue.identifier == "toSearchingView"{
            
            let destVC = segue.destination as! SearchingViewController
            
            let gender: String = genderArray[self.pickerSong.selectedRow(inComponent: 0)]
            let genre: String = genreArray[self.pickerSong.selectedRow(inComponent: 1)]
            
            let song: String! = gender + genre
            
            
            if gender == "여자" && genre == "발라드"{
                destVC.info1 = song
            }
            else if gender == "여자" && genre == "댄스"{
                destVC.info2 = song
            }
            else if gender == "남자" && genre == "발라드"{
                destVC.info3 = song
            }
            else if gender == "남자" && genre == "댄스"{
                destVC.info4 = song
            }
        }
        
    }
}
