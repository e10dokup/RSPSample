//
//  EnemyTrend.swift
//  sampleapp
//
//  Created by Yoshihiro Wada on 2018/01/08.
//  Copyright © 2018年 Yoshihiro Wada. All rights reserved.
//

import UIKit

class EnemyTrend: NSObject {
    
    let min: Float = 0
    let max: Float = 1
    
    var rockThreshold: Float = 0.3
    var scissorsThreshold: Float = 0.6
    
    override init() {}
    
    init(rockThreshold: Float, scissorsThreshold: Float) {
        if (rockThreshold > scissorsThreshold) {
            return
        }
        
        self.rockThreshold = rockThreshold
        self.scissorsThreshold = scissorsThreshold
    }
    
    func generateHand(float: Float) -> Hand {
        if (float < rockThreshold) {
            return Hand.rock
        } else if (float < scissorsThreshold) {
            return Hand.scissors
        } else {
            return Hand.paper
        }
    }
    

}
