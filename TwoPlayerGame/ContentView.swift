//
//  ContentView.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var gameModel: GameModel
    @State var mainStateMachine: MainStateMachine
    
    init(model: GameModel) {
        self.gameModel = model
        self.mainStateMachine = MainStateMachine(model: model)
    }
    
    var body: some View {
        VStack {
//            if let currState = gameModel.currentState {
//                Text("State = \(currState)")
//            }
            
            if let state = mainStateMachine.currentState {
                if state is StartState {
                    StartView(state: state)
                } else if state is SpielenState {
                    spielenView
                } else if state is ErgebnisState {
                    ErgebnisView(state: state)
                } else {
                    Text("Unbekannter State")
                }
                
                Spacer()
            } else {
                Text("No current state")
            }
        }
    }
    
    @ViewBuilder
    var spielenView: some View {
        if let spielenSM = gameModel.spielenStateMachine,
           let state = spielenSM.currentState {
            if state is ZahlWaehlenState {
                ZahlWaehlenView(state: state)
            } else if state is WaffeWaehlenState {
                WaffeWaehlenView(state: state)
            } else {
                Text("ungültiger Spiele-State")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: GameModel())
    }
}
