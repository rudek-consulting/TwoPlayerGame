//
//  ZahlWaehlenState.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import GameplayKit
import Combine

class ZahlWaehlenState: GKState {
    var pub: AnyCancellable? = nil
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is WaffeWaehlenState.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        if let model = (stateMachine as? GameStateMachine)?.model {
            model.zahlS1 = 0
            model.zahlS2 = 0
            
            pub = Publishers.CombineLatest(model.$zahlS1, model.$zahlS2)
                .filter { z1, z2 in
                    return z1 != 0 && z2 != 0
                }
                .sink { [weak self] (z1, z2) in
                    print("fertig: \(z1) / \(z2)")
                    self?.stateMachine?.enter(WaffeWaehlenState.self)
                }
        }
    }
}
