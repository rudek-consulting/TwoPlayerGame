//
//  TwoPlayerGameApp.swift
//  TwoPlayerGame
//
//  Created by Arne Rudek on 27.09.21.
//

import SwiftUI

@main
struct TwoPlayerGameApp: App {
    let gameModel = GameModel()
    var body: some Scene {
        WindowGroup {
            ContentView(model: gameModel)
        }
    }
}
