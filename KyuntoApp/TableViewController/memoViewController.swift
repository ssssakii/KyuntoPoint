//
//  memoViewController.swift
//  KyuntoApp
//
//  Created by 高田早記 on 2016/12/03.
//  Copyright © 2016年 saki takada. All rights reserved.
//

import UIKit

class memoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    var memoArray: [String] = []
    let saveData: UserDefaults = UserDefaults.standard
    
    //var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("_______memoViewController________")

        //データ読み込み
        memoArray = (saveData.object(forKey: "MEMO") as! [String]?)!
        NSLog("2 memoArray: %@", String(describing: memoArray))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if saveData.array(forKey: "MEMO") != nil {
            memoArray = saveData.array(forKey: "MEMO") as! [String]
        }
        //tableView.reloadData()
    }

    
    // MARK: - Table view data source
    
    //セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("いえい")
        return memoArray.count
    }
    
    //セルの中身の表示の仕方を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("ハーーーイここここ")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell!
        
        //Tag番号1で UILabelインスタンスを生成
        _ = table.viewWithTag(1) as! UILabel // textLabel
        cell?.textLabel?.text = memoArray[indexPath.row]
        return cell!
    }
}
