//
//  EngineGroup.swift
//  flutter-ios
//
//  Created by Allie Kim on 2022/06/02.
//

import Foundation
import Flutter
import FlutterPluginRegistrant

final class EngineGroup: FlutterEngineGroup {

    static let shared = EngineGroup()

    var home: FlutterEngine?
    var login: FlutterEngine?

    private init() {
        super.init(name: "Flutter Engine Group", project: nil)
    }

    func makeEngines() {
        home = self.makeEngine(withEntrypoint: nil, libraryURI: nil, initialRoute: "/")
        login = self.makeEngine(withEntrypoint: nil, libraryURI: nil, initialRoute: "/login")

        GeneratedPluginRegistrant.register(with: home!)
        GeneratedPluginRegistrant.register(with: login!)
    }
}
