//
//  Loader.swift
//  CustomLoaderView
//
//  Created by Hari Haran on 12/06/20.
//  Copyright © 2020 Hari Haran. All rights reserved.
//

import Foundation
import UIKit

class Loader: NSObject {
    static let shared = Loader()
    var loaderView = UIActivityIndicatorView(style: .large)
    
    /// Creating activity indicator and adding it to the application window with few customisations
    func create() {
        loaderView.layer.cornerRadius = 5
        loaderView.translatesAutoresizingMaskIntoConstraints = false
        loaderView.color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        loaderView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        APP.window?.addSubview(loaderView)
        loaderView.centerYAnchor.constraint(equalTo: (APP.window!.centerYAnchor), constant: 0).isActive = true
        loaderView.centerXAnchor.constraint(equalTo: (APP.window!.centerXAnchor), constant: 0).isActive = true
        loaderView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        loaderView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        loaderView.isHidden = true
    }
    
    /// Bringing activity upfront and starting animation
    func start() {
        APP.window?.bringSubviewToFront(loaderView)
        loaderView.startAnimating()
        loaderView.isHidden = false
    }
    
    /// Hiding and stoping animation of the activity indicator
     func stop() {
        loaderView.stopAnimating()
        loaderView.isHidden = true
    }
    
}
