//
//  SWIFTUI_P3App.swift
//  SWIFTUI_P3
//
//  Created by Aybatu Kerküklüoğlu on 15/12/2021.
//

import SwiftUI

@main
struct SWIFTUI_P3App: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
      WindowGroup {
        if isOnboarding {
          OnboardingView()
        } else {
          ContentView()
        }
      }
    }
}
