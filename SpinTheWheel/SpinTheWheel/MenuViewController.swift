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
    let spinButton = UIButton(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTitleLabel()
        configureSpinButton()
    }
    
    private func configureViewController() {
        view.backgroundColor = UIColor(named: "viewBackgroundColor")
    }
    
    private func configureTitleLabel() {
        titleLabel.text = "Rewards Wheel"
        titleLabel.textColor = .white
        titleLabel.font = .preferredFont(forTextStyle: .largeTitle)
    }
    
    private func configureSpinButton() {
        spinButton.setTitle("Spin the Wheel", for: .normal)
        spinButton.titleLabel?.font = .preferredFont(forTextStyle: .title1)
        spinButton.setTitleColor(.label, for: .normal)
        spinButton.backgroundColor = UIColor(named: "buttonBackgroundColor")
    }
}
