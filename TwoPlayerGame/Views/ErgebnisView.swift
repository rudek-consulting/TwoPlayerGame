//
//  ErgebnisView.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI
import GameplayKit

struct ErgebnisView: View {
    let state: GKState
    
    var body: some View {
        VStack {
            Text("Ergebnis")
            
            Button {
                state.stateMachine?.enter(StartState.self)
            } label: {
                Text("Weiter zu Start")
            }
            Button {
                state.stateMachine?.enter(SpielenState.self)
            } label: {
                Text("Noch einmal Spielen")
            }
        }
    }
}

struct ErgebnisView_Previews: PreviewProvider {
    static var previews: some View {
        ErgebnisView(state: GKState())
    }
}
