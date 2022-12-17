//
//  ContentView.swift
//  Final
//
//  Created by Malak A. Barayan on 23/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            Text("Lets Start")
                .foregroundColor(Color("aa"))
                .font(.title)
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
            
        }}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }}}
