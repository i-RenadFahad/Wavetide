//
//  LandingPage.swift
//  Final
//
//  Created by Malak A. Barayan on 23/05/1444 AH.
//

import SwiftUI

struct LandingPage: View {
    
    @State private var IsActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if IsActive {
            ContentView()
        } else {
            
            
            VStack {
                
                VStack {
                    
                Image("image")
                        .resizable()
                        .frame(width: 340, height: 300)
                        .multilineTextAlignment(.center)

                    Text("Ready to deep dive!")
                        .foregroundColor(Color("aa"))
                        .font(.title)
                        .multilineTextAlignment(.center)

                
                        .padding(10)
                    
                        }
                
                
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear { withAnimation(.easeIn(duration: 2)) {
                    self.size = 0.9
                    self.opacity = 1.0}
                    }
                }
            
            
            
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation{
                        self.IsActive = true
                    }}}
        }}}
        
        
        
        struct LandingPage_Previews: PreviewProvider {
            static var previews: some View {
                LandingPage()
            }
        }
    

