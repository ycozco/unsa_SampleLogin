//
//  SampleLoginApp.swift
//  Shared
//
//  Created by yoset on 1/10/24.
//

import SwiftUI

@main
struct SampleLoginApp: App {
    @State var isLoggedin: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedin {
                HomeView()
            } else {
                LoginView(isLoggedin: $isLoggedin)
            }
        }
    }
}

