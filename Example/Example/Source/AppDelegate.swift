//
//  AppDelegate.swift
//  Example
//
//  Created by Servyou on 2020/8/5.
//  Copyright © 2020 Wmy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = ViewController();
        window?.makeKeyAndVisible()
        
        return true
    }
}
