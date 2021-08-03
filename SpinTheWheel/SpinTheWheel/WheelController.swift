//
//  WheelController.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/3/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

class WheelController {
    
    var wheelView: WheelView!
    weak var delegate: MenuViewController?
    
    init(delegate: MenuViewController, completed: @escaping () -> Void) {
        self.delegate = delegate
        getRewards { [weak self] rewards in
            if let self = self {
                DispatchQueue.main.async {
                    self.wheelView = WheelView(rewards: rewards)
                    completed()
                }
            }
        }
    }
    
    private func getRewards(completed: @escaping ([Reward]) -> Void) {
        NetworkManager.getRewards { [weak self] result in
            switch result {
            case .success(let rewards):
                completed(rewards)
            case .failure(let error):
                print(error)
                // to do
                let alert = UIAlertController(title: "Something Went Wrong", message: "There was a problem retrieving the rewards from the server. Please try again later.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self?.delegate?.navigationController?.present(alert, animated: true)
            }
        }
    }
}
