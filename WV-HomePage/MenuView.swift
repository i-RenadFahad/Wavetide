//
//  SwiftUIView.swift
//  WV-HomePage
//
//  Created by Renad Fahad Althobaiti on 14/05/1444 AH.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading){
                Text("Welcome Saad Ahmed")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("Wallet")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("My orders")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("Notifications")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("Profile")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("Settings")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("Discover activities")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("About us")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                Divider()
                    .padding(.bottom, 15)
            }
            
            VStack(alignment: .leading){
                Text("Contact us")
                    .foregroundColor(Color("blue1"))
                    .padding(.bottom, 15)
                
                Spacer()
            }
        }.padding()
         .padding(.top,40)
         .background(Color("gr"))
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
