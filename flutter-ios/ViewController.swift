//
//  ViewController.swift
//  flutter-ios
//
//  Created by Allie Kim on 2022/06/02.
//

import UIKit
import FlutterPluginRegistrant

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let buttons = makeButtons()
        buttons.forEach {
            view.addSubview($0)
        }
    }

    private func makeButtons() -> [UIButton] {
        // Make a button to call the showFlutter function when pressed.
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(routeTo), for: .touchUpInside)
        button.setTitle("Show Home", for: UIControl.State.normal)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: self.view.frame.width / 2 - 80,
                              y: self.view.frame.height / 2 - 120,
                              width: 160.0,
                              height: 40.0)
        button.backgroundColor = .systemMint
        button.tag = 1

        // Make a button to call the showFlutter function when pressed.
        let button2 = UIButton(type: .system)
        button2.addTarget(self, action: #selector(routeTo), for: .touchUpInside)
        button2.setTitle("Show Login", for: UIControl.State.normal)
        button2.setTitleColor(.white, for: .normal)
        button2.frame = CGRect(x: self.view.frame.width / 2 - 80,
                               y: self.view.frame.height / 2 - 70,
                               width: 160.0,
                               height: 40.0)
        button2.backgroundColor = .systemBlue
        button2.tag = 2

        return [button, button2]
    }

    @objc
    func routeTo(sender: UIButton) {

        if sender.tag == 1 {
            let flutterVC = FlutterViewController(engine: EngineGroup.shared.home!, nibName: nil, bundle: nil)
            navigationController?.pushViewController(flutterVC, animated: true)
        } else {
            let flutterVC = FlutterViewController(engine: EngineGroup.shared.login!, nibName: nil, bundle: nil)
            navigationController?.pushViewController(flutterVC, animated: true)
        }
    }
}
