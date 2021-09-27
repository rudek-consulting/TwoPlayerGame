//
//  StartView.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI
import GameplayKit

struct StartView: View {
    let state: GKState
    
    var body: some View {
        VStack {
            Text("Start")
            
            Button {
                state.stateMachine?.enter(SpielenState.self)
            } label: {
                Text("Weiter zu Spielen")
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(state: GKState())
    }
}
