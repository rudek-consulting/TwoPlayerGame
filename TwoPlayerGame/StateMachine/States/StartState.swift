//
//  StartState.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit

class StartState: GKState {
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is SpielenState.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        
    }
    
    override func willExit(to nextState: GKState) {
        
    }
}
