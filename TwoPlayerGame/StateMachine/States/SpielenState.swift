//
//  SpielenState.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit

class SpielenState: GKState {
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is ErgebnisState.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        if let model = (stateMachine as? GameStateMachine)?.model {
            let states = [
                ZahlWaehlenState(),
                WaffeWaehlenState(),
                RundeBeendenState(onEnterState: onSpielrundeBeendet)
            ]
            
            model.spielenStateMachine = SpielenStateMachine(model: model, states: states)
            model.spielenStateMachine?.enter(ZahlWaehlenState.self)
        }
    }
    
    private func onSpielrundeBeendet() {
        print("Spielrunde beendet")
        stateMachine?.enter(ErgebnisState.self)
        if let mainSM = stateMachine as? GameStateMachine {
            mainSM.model.spielenStateMachine = nil
        }
    }
}
