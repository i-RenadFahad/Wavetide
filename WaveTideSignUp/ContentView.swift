//
//  ContentView.swift
//  WaveTideSignUp
//
//  Created by Reema Alhabdan on 06/12/2022.
//

import SwiftUI
import CloudKit
import _AuthenticationServices_SwiftUI


struct ContentView: View {
    @State private var checked1 = true
    @State var text = ""
    
    
    @State private var name = ""
    
    @State private var email  = ""
    @State private var gender = ""
    @State private var password  = ""
    
    @StateObject private var vm: ListView
    
    init(vm: ListView){
        _vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        
        ScrollView{
            VStack{
                
                VStack {
                    HStack{
                        Button{
                            
                        }label: {
                            ZStack{
                                Image(systemName: "xmark")
                                    .bold()
                                    .foregroundColor(Color.black)
                                    .offset(x:-65 , y: -70)
                            }}
                        Image("logo")
                            .resizable()
                            .frame(width:150, height:150)
                            .offset(x: -5, y:-6)
                    }
                    .padding(5)
                    Text("Create New Account")
                        .fontWeight(.medium)
                        .font(.largeTitle)
                    VStack{

                        ZStack {
                            Text("")
                            HStack {
                                Image(systemName: "person.fill")
                                TextField("Username", text: $name)
                            }
                           
                            .frame(height: 55)
                        
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 5)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                .padding([.horizontal], 16)
                                .foregroundColor(.gray)
                            .padding(.horizontal,1)
                               
                               .foregroundColor(.gray)
                         
                        }
                        Text("")
                        HStack {
                            Image(systemName: "folder.fill")
                            TextField("Email", text: $email)
                        }
                         .frame(height: 55)
                     .textFieldStyle(PlainTextFieldStyle())
                             .padding([.horizontal], 5)
                             .cornerRadius(16)
                             .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                             .padding([.horizontal], 16)
                             .foregroundColor(.gray)
                         .padding(.horizontal,1)
                            .foregroundColor(.gray)
                        Text("")
                        HStack {
                            Image(systemName: "birthday.cake.fill")
                            TextField("Gender", text: $gender)
                        }
                            .frame(height: 55)
                        
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 5)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                .padding([.horizontal], 16)
                                .foregroundColor(.gray)
                            .padding(.horizontal,1)
                               
                               .foregroundColor(.gray)
                       
                        VStack{
                            Text("")
                            HStack {
                                Image(systemName: "lock.fill")
                                SecureField("Password", text: $password)
                            }
                           
                                .frame(height: 55)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding([.horizontal], 5)
                                    .cornerRadius(16)
                                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray))
                                    .padding([.horizontal], 16)
                                    .foregroundColor(.gray)
                                .padding(.horizontal,1)
                                  .foregroundColor(.gray)
                           Spacer()
                            Spacer()
                            HStack(){
                                CheckBoxView(checked: $checked1)
                                    .padding(.horizontal,1)
                                Text("I Agree to the Terms & Conditions.")
                                    .foregroundColor(.black)
                                    .fontWeight(.light)
                            }

                            VStack{
                                
                                HStack(){
                                    
                                    
                                    Button("Sign Up"){
                                        vm.newAccount(name: name, email: email, gender: gender, password: password)

                                        self.name = ""
                                        self.email = ""
                                        self.password = ""
                                        self.gender = ""
                                    }
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 50)
                                    .background(Color("color"))
                                    .cornerRadius(10)
                                }
                                    HStack{
                                        Text("Have An Exsisting Account?")
                                            .fontWeight(.ultraLight)
                                            .foregroundColor(.black)
                                        Button{
                                            
                                        }label: {
                                            Text("Log In")
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
                
            }.background(Color.white.ignoresSafeArea())
            
        }}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(vm: ListView(container: CKContainer.default()))
        }
    }
