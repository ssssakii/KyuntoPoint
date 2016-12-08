//
//  AppDelegate.swift
//  KyuntoApp
//
//  Created by 高田早記 on 2016/12/03.
//  Copyright © 2016年 saki takada. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //復帰したかどうか
        if let notification = launchOptions?[UIApplicationLaunchOptionsKey.localNotification] as? UILocalNotification,let userInfo = notification.userInfo{
            application.applicationIconBadgeNumber = 0
            application.cancelLocalNotification(notification)
        }
        //復帰に関係なくバッジが0じゃなければ0にする
        if application.applicationIconBadgeNumber != 0{
            application.applicationIconBadgeNumber = 0
        }
        //ユーザーに通知許可をもらうためのコード
        if #available(iOS 8.0, *) {
            // iOS8以上
            //forTypesは.Alertと.Soundと.Badgeがあります。
            let notiSettings = UIUserNotificationSettings(types:[.alert,.sound,.badge], categories:nil)
            application.registerUserNotificationSettings(notiSettings)
            application.registerForRemoteNotifications()
            
        } else{
            // iOS7以前
            application.registerForRemoteNotifications( matching: [.alert,.sound,.badge] )
        }
        
        return true
    }
    
    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        //アプリがactive時に通知を発生させた時にも呼ばれる
        if application.applicationState != .active{
            //バッジを０にする
            application.applicationIconBadgeNumber = 0
            //通知領域から削除する
            application.cancelLocalNotification(notification)
        }else{
            //active時に通知が来たときはそのままバッジを0に戻す
            if application.applicationIconBadgeNumber != 0{
                application.applicationIconBadgeNumber = 0
                application.cancelLocalNotification(notification)
            }
        }
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        //古い通知があれば削除する
        application.cancelAllLocalNotifications()
        //ローカル通知
        let notification = UILocalNotification()
        //ロック中にスライドで〜〜のところの文字
        notification.alertAction = "アプリを開く"
        //通知の本文
        notification.alertBody = "今日もキュントポイントがたまりました！！"
        //通知される時間（とりあえず10秒後に設定）
        notification.fireDate = NSDate(timeIntervalSinceNow:10) as Date
        //notification.fireDate = EveryDay.EveryDayPush()
        //通知音
        notification.soundName = UILocalNotificationDefaultSoundName
        //アインコンバッジの数字
        notification.applicationIconBadgeNumber = notification.applicationIconBadgeNumber + 1
        //通知を識別するID
        notification.userInfo = ["notifyID":"kyunto"]
        //通知をスケジューリング
        application.scheduleLocalNotification(notification)
        //毎日繰り返す
        notification.repeatInterval = .day
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("バックグラウンドからフォアグラウウンド")
        if application.applicationIconBadgeNumber != 0{
            application.applicationIconBadgeNumber = 0
            print("application\(application.applicationIconBadgeNumber)")
        }
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

