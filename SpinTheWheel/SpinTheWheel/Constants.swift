//
//  Constants.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import UIKit

enum NetworkingError: Error {
    case invalidUrl
    case invalidRequest
    case invalidResponse
    case invalidData
}

enum Colors {
    static let viewBackground = UIColor(named: "viewBackgroundColor")!
    static let buttonBackground = UIColor(named: "buttonBackgroundColor")!
    static let clearBackground = UIColor.clear
    static let wheelLightSection = UIColor(named: "wheelLightBackgroundColor")!
    static let wheelDarkSection = UIColor(named: "wheelDarkBackgroundColor")!
}

enum Images {
    static let wheelTicker = UIImage(named: "wheelTickerImage")!
    static let wheelRing = UIImage(named: "wheelRingImage")!
}
