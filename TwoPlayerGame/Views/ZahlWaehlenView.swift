//
//  ZahlWaehlenView.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI
import GameplayKit
import Combine


struct ZahlWaehlenView: View {
    let state: GKState
    @ObservedObject private var gameModel: GameModel
    
    init(state: GKState) {
        self.state = state
        if let sm = state.stateMachine as? GameStateMachine {
            self.gameModel = sm.model
        } else {
            self.gameModel = GameModel()
        }
    }
    
    var body: some View {
        VStack {
            Text("Zahl wählen")
            
            HStack {
                if gameModel.zahlS1 != 0 {
                    Text("Z1=\(gameModel.zahlS1)")
                } else {
                    VStack {
                        Button {
                            gameModel.zahlS1 = 5
                        } label: {
                            Text("5")
                        }
                        Button {
                            gameModel.zahlS1 = 10
                        } label: {
                            Text("10")
                        }
                        Button {
                            gameModel.zahlS1 = 15
                        } label: {
                            Text("15")
                        }
                    }
                }
                
                if gameModel.zahlS2 != 0 {
                    Text("Z2=\(gameModel.zahlS2)")
                } else {
                    VStack {
                        Button {
                            gameModel.zahlS2 = 5
                        } label: {
                            Text("5")
                        }
                        Button {
                            gameModel.zahlS2 = 10
                        } label: {
                            Text("10")
                        }
                        Button {
                            gameModel.zahlS2 = 15
                        } label: {
                            Text("15")
                        }
                    }
                }
            }
            
            Button {
                state.stateMachine?.enter(WaffeWaehlenState.self)
            } label: {
                Text("Weiter zu Waffe wählen")
            }
        }
    }
}

struct ZahlWaehlenView_Previews: PreviewProvider {
    static var previews: some View {
        ZahlWaehlenView(state: GKState())
    }
}
