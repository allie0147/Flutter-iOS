//
//  AppDelegate.swift
//  flutter-ios
//
//  Created by Allie Kim on 2022/06/02.
//

import UIKit
import Flutter
// Used to connect plugins (only if you have plugins with iOS platform code).
import FlutterPluginRegistrant

@main
class AppDelegate: FlutterAppDelegate {

//    let engineGroup = FlutterEngineGroup(name: "my flutter engine group", project: nil)
//    var home: FlutterEngine?
//    var login: FlutterEngine?

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        EngineGroup.shared.makeEngines()
//        home = engineGroup.makeEngine(withEntrypoint: nil, libraryURI: nil, initialRoute: "/")
//        login = engineGroup.makeEngine(withEntrypoint: nil, libraryURI: nil, initialRoute: "/login")
//
//        GeneratedPluginRegistrant.register(with: home!)
//        GeneratedPluginRegistrant.register(with: login!)

        return super.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
    }

    // MARK: UISceneSession Lifecycle

    override func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    override func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

