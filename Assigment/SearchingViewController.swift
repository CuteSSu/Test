//
//  SearchingViewController.swift
//  Assigment
//
//  Created by SWUCOMPUTER on 2018. 4. 19..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SearchingViewController: UIViewController {

    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var infoLabel: UILabel!

    var info1:String?
    var info2:String?
    var info3:String?
    var info4:String?
    
    let womenBalladImage = UIImage(named: "여자 발라드 오전 6.22.53.jpg")
    let womenDanceImage = UIImage(named: "여자 댄스 오전 6.20.50.jpg")
    let manBalladImage = UIImage(named: "남자 발라드 오전 6.22.53.jpg")
    let manDanceImage = UIImage(named: "남자 댄스 오전 6.20.50.jpg")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        albumImageView.image = womenDanceImage
        infoLabel.text = " 마마무 - 별이 빛나는 밤"
        
        // Do any additional setup after loading the view.
        if info1 != nil{
            infoLabel.text = "아이유 - 밤편지"
            albumImageView.image = womenBalladImage
        }
        else if info2 != nil{
            infoLabel.text = "마마무 - 별이 빛나는 밤"
            albumImageView.image = womenDanceImage
        } else if info3 != nil{
            infoLabel.text = "폴킴 - 비"
            albumImageView.image = manBalladImage
        } else if info4 != nil{
            infoLabel.text = "NCT - 무한적아"
            albumImageView.image = manDanceImage
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toAddingView"{
            let destVC = segue.destination as! AddingViewController
            
            let singerAndsong:String = infoLabel.text!
            destVC.info_1 = singerAndsong
        }
    }
    
}

