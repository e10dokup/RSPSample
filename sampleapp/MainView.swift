//
//  MainView.swift
//  sampleapp
//
//  Created by Yoshihiro Wada on 2018/01/08.
//  Copyright © 2018年 Yoshihiro Wada. All rights reserved.
//

import UIKit

protocol MainViewDelegate {
    func tapHandButton(hand: Hand)
}

class MainView: UIView {
    
    var mainViewDelegate: MainViewDelegate? = nil
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func tapRockButton(_ sender: Any) {
        mainViewDelegate?.tapHandButton(hand: Hand.rock)
    }
    
    @IBAction func tapScissorsButton(_ sender: Any) {
        mainViewDelegate?.tapHandButton(hand: Hand.scissors)
    }
    
    @IBAction func tapPaperButton(_ sender: Any) {
        mainViewDelegate?.tapHandButton(hand: Hand.paper)
    }
}
