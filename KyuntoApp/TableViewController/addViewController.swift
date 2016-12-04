//
//  addViewController.swift
//  KyuntoApp
//
//  Created by 高田早記 on 2016/12/03.
//  Copyright © 2016年 saki takada. All rights reserved.
//

import UIKit

class addViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var addMemoTextView: UITextView!
    var memoArray: [String] = []
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //デリゲート
        addMemoTextView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveMemo() {
        print("PUSH save")
        //配列に保存
        memoArray.append(addMemoTextView.text)
        NSLog("memoArray: %@", String(describing: memoArray))
        //UserDefaultsに保存
        saveData.set(memoArray, forKey: "MEMO")
        //この時点で一旦保存
        saveData.synchronize()
        
        print(saveData.object(forKey: "MEMO"))
        
        //memoViewControllerに遷移の3行
        print("画面遷移しマーーーーーーース")
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "tomemoViewController") as! memoViewController
        self.present(nextView, animated: true, completion: nil)
    }

    //***** 改行ボタンを押した時の処理 *******/
    func textFieldShouldReturn(_ addMemoTextView: UITextView) -> Bool {
        // キーボードを隠す
        addMemoTextView.resignFirstResponder()
        return true
    }

}
