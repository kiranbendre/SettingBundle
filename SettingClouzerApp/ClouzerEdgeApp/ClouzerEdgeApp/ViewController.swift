//
//  ViewController.swift
//  ClouzerEdgeApp
//
//  Created by Iphone XR on 14/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.register(defaults: [String : Any]())
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let userDefaults = UserDefaults.standard
        let userName = userDefaults.string(forKey: "name_preference")
        print("User name = \(userName)")
        
        userDefaults.set("Madhuri", forKey:"name_preference")
        userDefaults.synchronize()
    }


}

