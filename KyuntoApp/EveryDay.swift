//
//  EveryDay.swift
//  KyuntoApp
//
//  Created by 高田早記 on 2016/12/07.
//  Copyright © 2016年 saki takada. All rights reserved.
//

import Foundation

class EveryDay {
/*
    class func EveryDay() -> NSDate{
       
        //現在の日時を取得する
        let date = NSDate()
        let calender = NSCalendar.current
        let components = calender.dateComponents([.year, .month, .day, .hour, .minute], from: date as Date)
        let hour = components.hour
        print(hour)
        //通知する曜日を指定
        let interval: TimeInterval
        //現在の日時から次の日を算出
        if hour! >= 12 {
            interval = TimeInterval((24 - hour!) + 12)
        } else {
            interval = TimeInterval(12 - hour!)
        }
        print(interval)
        //通知する日時
        let nextDate = date.addingTimeInterval(interval)
        var fireDateComponents = calender.dateComponents([.year, .month, .day, .hour, .minute], from: date as Date)
        //12時
        fireDateComponents.hour = 12
        //0分
        fireDateComponents.minute = 0
        //0秒
        fireDateComponents.second = 0
        
        //return calender.dateComponents(fireDateComponents)!
    }
 */
}
