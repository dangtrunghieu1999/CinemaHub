//
//  AppDelegate.swift
//  CinemaHub
//
//  Created by DangTrungHieu on 4/6/20.
//  Copyright © 2020 DangTrungHieu. All rights reserved.
//

import UIKit
import SnapKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController.init(rootViewController: ViewController())
        return true
    }
    
    
}

