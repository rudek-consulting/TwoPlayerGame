//
//  SpielenStateMachine.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit


class SpielenStateMachine: GKStateMachine, GameStateMachine {
    let model: GameModel
    init(model: GameModel, states: [GKState]) {
        self.model = model
        super.init(states: states)
    }
    
    override func enter(_ stateClass: AnyClass) -> Bool {
        let result = super.enter(stateClass)
        if result {
            self.model.currentState = String(describing: type(of: stateClass))
        }
        return result
    }
}
