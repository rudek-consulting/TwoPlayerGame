//
//  GameModel.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI
import GameplayKit

class GameModel: ObservableObject {
    @Published var gameIteration: Int = 0
    @Published var currentState: String? = nil
    
    var spielenStateMachine: GKStateMachine? = nil
    
    @Published var zahlS1 = 0
    @Published var zahlS2 = 0
}
