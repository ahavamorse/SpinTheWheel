//
//  WheelView.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

class WheelView: UIView {
    
    var rewards: [Reward]!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(rewards: [Reward]) {
        self.init(frame: .zero)
        self.rewards = rewards
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            let radius = rect.size.width / 2
            let center = CGPoint(x: radius, y: radius)
            
            let numOfSections = CGFloat(rewards.count)
            let angleIncrement: CGFloat = .pi / (numOfSections / 2)
            
            var currentAngle: CGFloat = 0

            let colors = [UIColor.init(named: "wheelLightBackgroundColor")!.cgColor, UIColor.init(named: "wheelDarkBackgroundColor")!.cgColor]
            
            for i in 0...rewards.count - 1 {
                let endAngle = currentAngle + angleIncrement
                
                context.move(to: center)
                context.addArc(center: center, radius: radius, startAngle: currentAngle, endAngle: endAngle, clockwise: false)
                
                context.setFillColor(colors[i % 2])
                context.fillPath()
                
                currentAngle = endAngle
            }
        }
    }

}
