//
//  Reward.swift
//  SpinTheWheel
//
//  Created by HapiDani on 8/2/21.
//  Copyright © 2021 ahavamorse. All rights reserved.
//

import Foundation

struct Reward: Decodable {
    var displayText: String
    var value: Int
    var id: String
    var currency: String
}
