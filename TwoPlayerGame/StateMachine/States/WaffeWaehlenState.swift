//
//  WaffeWaehlenState.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit

class WaffeWaehlenState: GKState {
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is RundeBeendenState.Type
    }
}
