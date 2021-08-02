//
//  MenuViewController.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let titleLabel = UILabel()
    let spinButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTitleLabel()
    }
    
    private func configureViewController() {
        view.backgroundColor = UIColor(named: "backgroundColor")
    }
    
    private func configureTitleLabel() {
        titleLabel.text = "Rewards Wheel"
        titleLabel.textColor = .white
        titleLabel.font = .preferredFont(forTextStyle: .largeTitle)
    }
}
