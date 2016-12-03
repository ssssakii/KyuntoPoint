//
//  HomeViewController.swift
//  KyuntoApp
//
//  Created by Aoi Sakaue on 2016/12/03.
//  Copyright © 2016年 saki takada. All rights reserved.
//

import UIKit
//import animationButton

class HomeViewController: UIViewController {

    //キュントボタン宣言
    @IBOutlet weak var AlertView: UIView!
    @IBOutlet var KyuntoButton: animationButton!

    //キュントポイント
    var point : Int = 0
    @IBOutlet var label : UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        KyuntoButton.imageColorOff = UIColor.brown
//        KyuntoButton.imageColorOn = UIColor.red
//        KyuntoButton.circleColor = UIColor.green
//        KyuntoButton.lineColor = UIColor.blue
//        KyuntoButton.duration = 3.0 // default: 1.0
//        KyuntoButton.addTarget(self, action: #selector(HomeViewController.tappedButton(_:)), for: .touchUpInside)
        //KyuntoButton.addTarget(self, action: "tappedButton:", for: UIControlEvents.touchDown)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //キュントボタンアニメーション
    @IBAction func touch(_ sender: animationButton) {
        if sender.isSelected {
            //            // deselect
                        sender.deselect()
                    } else {
            //            // select with animation
                        sender.select()
                    }
        sender.select()
        
        //キュントカウント
        point = point + 1
        label.text = "\(point)キュン"
        print("Kyun")
        
        
        //アラート
        AlertView.isHidden = false
    }
//    func tappedButton(_ sender : animationButton) {
//        if sender.isSelected {
//            // deselect
//            sender.deselect()
//        } else {
//            // select with animation
//            sender.select()
//        }
//        sender.select()
//        print("kyun")
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
