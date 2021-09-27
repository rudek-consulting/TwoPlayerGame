//
//  MainStateMachine.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import UIKit
import GameplayKit

class MainStateMachine: GKStateMachine, GameStateMachine {
    let model: GameModel
    init(model: GameModel) {
        self.model = model
        let states = [StartState(), SpielenState(), ErgebnisState()]
        
        super.init(states: states)
        
        _ = self.enter(StartState.self)
    }
    
    override func enter(_ stateClass: AnyClass) -> Bool {
        let result = super.enter(stateClass)
        if result {
            self.model.currentState = String(describing: type(of: stateClass))
        }
        return result
    }
}
