//
//  WaffeWaehlenView.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI
import GameplayKit

struct WaffeWaehlenView: View {
    let state: GKState
    
    var body: some View {
        VStack {
            Text("Waffe wählen")
            
            Button {
                state.stateMachine?.enter(RundeBeendenState.self)
            } label: {
                Text("Runde beenden")
            }
        }
    }
}

struct WaffeWaehlenView_Previews: PreviewProvider {
    static var previews: some View {
        WaffeWaehlenView(state: GKState())
    }
}
