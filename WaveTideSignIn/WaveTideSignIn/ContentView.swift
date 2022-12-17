//
//  ContentView.swift
//  WaveTideSignIn
//
//  Created by Reema Alhabdan on 06/12/2022.
//

import SwiftUI

import _AuthenticationServices_SwiftUI




struct ContentView: View {
    @State private var username = "Username"
    @State var text = ""
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack {
                HStack{
                    Button{
                        
                    }label: {
                        ZStack{
                            Image(systemName: "xmark")
                                .bold()
                                .foregroundColor(Color.black)
                                .offset(x:-75 , y: -140)
                        }}
                    Image("logo")
                        .resizable()
                        .frame(width:150, height:150)
                        .offset(x: -10,y: -70)
                }
         
                Text("Ready To Take A Dive!")
                    .fontWeight(.medium)
                    .font(.largeTitle)
                VStack{
                   
//                    TextField("Username", text: $username)
                    Text("")
                    HStack {
                        Image(systemName: "person.fill")
                        TextField("Username", text: $username)
                    }
                        .frame(height: 55)
                    
                            .textFieldStyle(PlainTextFieldStyle())
                    
                            .padding([.horizontal], 5)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                    
                            .padding([.horizontal], 16)
                            .foregroundColor(.gray)
                   

                    Text("")
                    HStack {
                        Image(systemName: "lock.fill")
                        SecureField("Password", text: .constant("Password"))
                    }
                        .frame(height: 55)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding([.horizontal], 5)
                            .cornerRadius(16)
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                            .padding([.horizontal], 16)
                            .foregroundColor(.gray)
                    Button("Forgot Password?"){
                        
                    }.padding(.trailing, -600)
                    .foregroundColor(.black)
                    .fontWeight(.thin)
                    
                   
                    
                    
                    Button("Log In"){
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .padding(25)
                    Divider()
                    Text("or").padding(.top,-30).frame(width: 25, height: 20)
                    .background(Circle().fill(Color(.white)).padding(.top,-35))
                       
                        SignInWithAppleButton(
                            onRequest: { request in
                                print("onRequest")                            },
                            onCompletion: { result in
                                print("")
                            }
                        ).frame(width: 300, height: 50)
                        
                        HStack{
                            Text("Don't Have An Account?")
                                .fontWeight(.ultraLight)
                                .foregroundColor(.black)
                            Button{
                                
                            }label: {
                                Text("Join now")
                                    .foregroundColor(.black)
                                    .underline()
                                    .fontWeight(.heavy)

                            }
                            
                        }
                        
                        
                        
                        
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

