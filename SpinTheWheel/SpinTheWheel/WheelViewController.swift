//
//  WheelViewController.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

class WheelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        title = "Spin the Wheel"
    }
    
    private func configureViewController() {
        view.backgroundColor = UIColor(named: "viewBackgroundColor")
    }
}
