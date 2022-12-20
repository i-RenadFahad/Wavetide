//
//  ContentView.swift
//  WaveTideChatBot
//
//  Created by Reema Alhabdan on 15/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to WaveTide, Let the fun begin!"]
    
    var body: some View {
        VStack {
            HStack {
//                Button{
//                    
//                }label: {
//                    ZStack{
//                        Image(systemName: "arrow.backward")
//                            .bold()
//                            .foregroundColor(Color.black)
//                            .offset(x:-75 , y: 0)
//                    }}
//                    
                Image("SaadAhmad")
                    .resizable()
                    .frame(width: 90, height: 100)
                    .clipShape(Circle())
                    .scaledToFill()
                    .multilineTextAlignment(.leading)
                //                    .offset(x:100,y:-90)
                Text("SaadAhmad")
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.center)

                    
                  
                }
                
                ScrollView {
                    ForEach(messages, id: \.self) { message in
                        // If the message contains [USER], that means it's us
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            // User message styles
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color.blue.opacity(0.8))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        } else {
                            
                            // Bot message styles
                            HStack {
                                Text(message)
                                    .padding()
                                    .background(Color.gray.opacity(0.15))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                        }
                        
                    }.rotationEffect(.degrees(180))
                }
                .rotationEffect(.degrees(180))
                .background(Color.gray.opacity(0.1))
                
                
                // Contains the Message bar
                HStack {
                    TextField("Type something", text: $messageText)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .onSubmit {
                            sendMessage(message: messageText)
                        }
                    
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Image(systemName: "paperplane")
                            .foregroundColor(.gray)
                    }
                    .font(.system(size: 26))
                    .padding(.horizontal, 10)
                }
                .padding()
            }
        }
        
        func sendMessage(message: String) {
            withAnimation {
                messages.append("[USER]" + message)
                self.messageText = ""
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        messages.append(getBotResponse(message: message))
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

