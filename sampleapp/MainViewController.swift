//
//  MainViewController.swift
//  sampleapp
//
//  Created by Yoshihiro Wada on 2018/01/08.
//  Copyright © 2018年 Yoshihiro Wada. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var mainView: MainView!
    
    var executor = RSPExecutor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.mainViewDelegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func executeRsp(hand: Hand) {
        let enemyHand = self.executor.execute()
        let result = self.executor.result(player: hand, enemy: enemyHand)
        
        mainView.resultLabel.text = generateLabel(enemyHand: enemyHand)
        if (result != nil) {
            mainView.resultLabel.textColor = result! ? UIColor.red : UIColor.blue
        } else {
            mainView.resultLabel.textColor = UIColor.black
        }
    }
    
    private func generateLabel(enemyHand: Hand) -> String {
        switch enemyHand {
        case Hand.rock:
            return "ぐー"
        case Hand.scissors:
            return "ちょき"
        case Hand.paper:
            return "ぱー"
        }
    }

}

extension MainViewController: MainViewDelegate {
    
    func tapHandButton(hand: Hand) {
        executeRsp(hand: hand)
    }
}
