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

    //Button宣言
    @IBOutlet var KyuntoButton: animationButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        
//        KyuntoButton.imageColorOff = UIColor.brown
//        KyuntoButton.imageColorOn = UIColor.red
//        KyuntoButton.circleColor = UIColor.green
//        KyuntoButton.lineColor = UIColor.blue
//        KyuntoButton.duration = 3.0 // default: 1.0
        
        //ボタンを押すとtapped呼び出し
        
//        KyuntoButton.addTarget(self, action: #selector(HomeViewController.tappedButton(_:)), for: .touchUpInside)
       
        
        //KyuntoButton.addTarget(self, action: "tappedButton:", for: UIControlEvents.touchDown)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func touch(_ sender: animationButton) {
        
        if sender.isSelected {
            //            // deselect
                        sender.deselect()
                    } else {
            //            // select with animation
                        sender.select()
                    }
        print("Kyun")
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
