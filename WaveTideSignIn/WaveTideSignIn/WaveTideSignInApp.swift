//
//  WaveTideSignInApp.swift
//  WaveTideSignIn
//
//  Created by Reema Alhabdan on 06/12/2022.
//

import SwiftUI
import CloudKit

@main
struct WaveTideSignInApp: App {
    let container = CKContainer(identifier: "iCloud.com.reema.Wave.Wave1")
    var body: some Scene {
        WindowGroup {
            ContentView(vm: ListView(container: CKContainer.default()))
        }
    }
}
