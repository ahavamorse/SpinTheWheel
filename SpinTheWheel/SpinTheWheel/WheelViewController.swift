//
//  WheelViewController.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

class WheelViewController: UIViewController {
    
    let wheelRingImageView = UIImageView(image: UIImage(named: "wheelRingImage"))
    let spinButton = UIButton(type: .system)
    
    var wheelController: WheelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureViewController()
        configureSpinButton()
        configureUI()
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
    
    private func configureUI() {
        view.addSubview(wheelController.wheelView)
        view.addSubview(wheelRingImageView)
        view.addSubview(spinButton)
        wheelController.wheelView.translatesAutoresizingMaskIntoConstraints = false
        wheelRingImageView.translatesAutoresizingMaskIntoConstraints = false
        spinButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            wheelController.wheelView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            wheelController.wheelView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            wheelController.wheelView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            wheelController.wheelView.heightAnchor.constraint(equalTo: wheelController.wheelView.widthAnchor),
            
            wheelRingImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            wheelRingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            wheelRingImageView.widthAnchor.constraint(equalTo: wheelController.wheelView.widthAnchor, constant: 45),
            wheelRingImageView.heightAnchor.constraint(equalTo: wheelRingImageView.widthAnchor),
            
            spinButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            spinButton.heightAnchor.constraint(equalToConstant: 50),
            spinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spinButton.widthAnchor.constraint(equalToConstant: 225)
        ])
    }
    
    @objc func spinButtonTapped() {
        
    }
}
