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
    var currentAngle: CGFloat = 0
    var numOfSections: CGFloat = 0
    var angleIncrement: CGFloat = 0
    
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
        self.numOfSections = CGFloat(rewards.count)
        self.angleIncrement = .pi / (numOfSections / 2)
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            
            let radius = rect.size.width / 2
            let center = CGPoint(x: radius, y: radius)
            
            var currentAngle = -0.5 * .pi + (angleIncrement / 2)

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
        
        configureRewardLabels(in: rect)
    }

    private func configureRewardLabels(in rect: CGRect) {
        let center = CGPoint(x: rect.size.width / 2, y: rect.size.height / 2)
        let numeralDistanceFromCenter = rect.size.width / 2.0 - 30
        
        for i in 0...rewards.count - 1 {
            let displayString = rewards[i].displayText
            
            let xPosition = center.x + (cos(CGFloat(i) * angleIncrement) * numeralDistanceFromCenter)
            let yPosition = center.y + (sin(CGFloat(i) * angleIncrement) * numeralDistanceFromCenter)
            
            let label = UILabel(frame: .zero)
            label.text = displayString
            label.font = .preferredFont(forTextStyle: .body)
            label.textColor = .white
            
            label.transform = CGAffineTransform(rotationAngle: CGFloat(i) * angleIncrement)
            
            addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: leadingAnchor, constant: xPosition),
                label.centerYAnchor.constraint(equalTo: topAnchor, constant: yPosition)
            ])
        }
    }
}
