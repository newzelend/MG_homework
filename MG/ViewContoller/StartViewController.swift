//
//  StartViewController.swift
//  MG
//
//  Created by Grisha Pospelov on 03.02.2022.
//

import UIKit

class StartViewController: UIViewController {
//    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StartGame" {
            guard let vc = segue.destination as? GameViewController else { return }
            if Game.shared.gameSession == nil {
                let gameSession = GameSession()
                Game.shared.gameSession = gameSession
                vc.gameDelegate = gameSession
            } else {
                vc.gameDelegate = Game.shared.gameSession
            }
        }
    }

}

