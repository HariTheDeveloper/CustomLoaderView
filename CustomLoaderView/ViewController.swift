//
//  ViewController.swift
//  CustomLoaderView
//
//  Created by Hari Haran on 12/06/20.
//  Copyright © 2020 Hari Haran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startAction(_ sender: Any) {
        Loader.shared.start()
    }
    
    @IBAction func stopAction(_ sender: Any) {
        Loader.shared.stop()
    }
}

