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
    let spinButton = UIButton(type: .system)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTitleLabel()
        configureSpinButton()
        configureUI()
    }
    
    private func configureNavigationBar() {
        navigationController?.navigationBar.isHidden = true
    }
    
    private func configureViewController() {
        view.backgroundColor = Colors.viewBackground
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
        spinButton.layer.cornerRadius = 10
        spinButton.addTarget(self, action: #selector(spinButtonTapped), for: .touchUpInside)
    }
    
    private func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(spinButton)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        spinButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 125),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            spinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            spinButton.heightAnchor.constraint(equalToConstant: 50),
            spinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spinButton.widthAnchor.constraint(equalToConstant: 225)
        ])
    }
    
    @objc func spinButtonTapped() {
        let wheelViewController = WheelViewController()
        wheelViewController.wheelController = WheelController(delegate: self) { [weak self] in
            self?.navigationController?.pushViewController(wheelViewController, animated: true)
        }
    }
}
