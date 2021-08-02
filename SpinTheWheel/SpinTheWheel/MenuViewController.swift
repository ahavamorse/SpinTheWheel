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
        configureUI()
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
    
    private func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(spinButton)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        spinButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            spinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            spinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
