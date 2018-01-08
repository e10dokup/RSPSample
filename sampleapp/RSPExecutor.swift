//
//  RSPExecutor.swift
//  sampleapp
//
//  Created by Yoshihiro Wada on 2018/01/08.
//  Copyright © 2018年 Yoshihiro Wada. All rights reserved.
//

import UIKit

class RSPExecutor: NSObject {

    private var enemyTrend = EnemyTrend()
    
    override init() {}
    
    init(enemyTrend: EnemyTrend) {
        self.enemyTrend = enemyTrend
    }
    
    func execute() -> Hand {
        let randomNumber = getRandomNumber(min: 0, max: 1)
        return enemyTrend.generateHand(float: randomNumber)
    }
    
    func result(player: Hand, enemy: Hand) -> Bool? {
        if (player == enemy) {
            return nil
        }
        return (player.rawValue + 1) % 3 == enemy.rawValue
    }
    
    private func getRandomNumber(min: Float, max: Float) -> Float {
        return (Float(arc4random_uniform(UINT32_MAX)) / Float(UINT32_MAX)) * (max - min) + min
    }
    
}
