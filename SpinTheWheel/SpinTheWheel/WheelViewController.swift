//
//  WheelViewController.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

class WheelViewController: UIViewController {
    
    let spinButton = UIButton(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureViewController()
        configureSpinButton()
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
    
    private func configureSpinButton() {
        spinButton.setTitle("Spin!", for: .normal)
        spinButton.titleLabel?.font = .preferredFont(forTextStyle: .title1)
        spinButton.setTitleColor(.label, for: .normal)
        spinButton.backgroundColor = UIColor(named: "buttonBackgroundColor")
        spinButton.layer.cornerRadius = 10
        spinButton.addTarget(self, action: #selector(spinButtonTapped), for: .touchUpInside)
    }
    
    @objc func spinButtonTapped() {
        
    }
}
