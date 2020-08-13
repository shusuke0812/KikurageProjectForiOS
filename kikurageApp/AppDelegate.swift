//
//  AppDelegate.swift
//  kikurageApp
//
//  Created by Shusuke Ota on 2019/02/26.
//  Copyright © 2019 shusuke. All rights reserved.
//

import UIKit

import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Firebase初期化
        FirebaseApp.configure()
        print("DEBUG: \(FirebaseApp.app()?.name ?? "App name is nil")")
        
        // スプラッシュ画面表示を2秒間に設定する
        sleep(1)
        
        // ログイン画面を開く
        self.openLoginPage()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // アプリを閉じる時に呼ばれる
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // アプリを閉じた時に呼ばれる
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // アプリを開く時に呼ばれる
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // アプリを開いた時に呼ばれる
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // フリックしてアプリを終了させた時に呼ばれる
    }
}

extension AppDelegate {
    // ログイン画面を開く
    func openLoginPage() {
        let window = UIWindow()
        self.window = window
        
        let s: UIStoryboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        self.window?.rootViewController = s.instantiateInitialViewController() as! LoginViewController
        self.window?.makeKeyAndVisible()
    }
}
