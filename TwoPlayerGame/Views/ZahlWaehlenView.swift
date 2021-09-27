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
    @State private var z1 = 0
    @State private var z2 = 0
    
    var body: some View {
        VStack {
            Text("Zahl wählen")
            
            if let sm = state.stateMachine as? SpielenStateMachine,
               let model = sm.model {

                HStack {
                    if z1 != 0 {
                        Text("Z1=\(z1)")
                    } else {
                        VStack {
                            Button {
                                model.zahlS1 = 5
                                z1 = 5
                            } label: {
                                Text("5")
                            }
                            Button {
                                model.zahlS1 = 10
                                z1 = 10
                            } label: {
                                Text("10")
                            }
                            Button {
                                model.zahlS1 = 15
                                z1 = 15
                            } label: {
                                Text("15")
                            }
                       }
                    }
                    
                    if z2 != 0 {
                        Text("Z2=\(z2)")
                    } else {
                        VStack {
                            Button {
                                model.zahlS2 = 5
                                z2 = 5
                            } label: {
                                Text("5")
                            }
                            Button {
                                model.zahlS2 = 10
                                z2 = 10
                            } label: {
                                Text("10")
                            }
                            Button {
                                model.zahlS2 = 15
                                z2 = 15
                            } label: {
                                Text("15")
                            }
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
