//
//  AppDelegate.swift
//  IconRain
//
//  Created by huang weiqiang on 2021/3/3.
//  Copyright © 2021 huangweiqiang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        let vc = ViewController()
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        return true
    }


}

