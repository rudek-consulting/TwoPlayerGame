//
//  RundeBeendenState.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit

class RundeBeendenState: GKState {
    private var onEnterState: (() -> Void)? = nil

    init(onEnterState: (() -> Void)?) {
        self.onEnterState = onEnterState
    }
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return false
    }
    
    override func didEnter(from previousState: GKState?) {
        onEnterState?()
    }
}
