//
//  SpielenView.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI
import GameplayKit

struct SpielenView: View {
    let state: GKState
    
    var body: some View {
        VStack {
            Text("Spielen")
            
            Button {
                state.stateMachine?.enter(ErgebnisState.self)
            } label: {
                Text("Weiter zu Ergebnis")
            }
        }
    }
}

struct SpielenView_Previews: PreviewProvider {
    static var previews: some View {
        SpielenView(state: GKState())
    }
}
