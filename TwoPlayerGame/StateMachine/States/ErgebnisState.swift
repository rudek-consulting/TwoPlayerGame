//
//  ErgebnisState.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit

class ErgebnisState: GKState {
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is StartState.Type ||
        stateClass is SpielenState.Type
    }
}
