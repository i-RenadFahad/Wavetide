//
//  ContentView.swift
//  WaveTideConfirmPage
//
//  Created by Reema Alhabdan on 17/12/2022.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.4738, longitude: 39.1638), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack  {
                
                    HStack{
                        Text("Activity:")
                            .frame(width: 70,alignment: .center)
                            .bold()
                        
                        Text("Wind Surfing")
                            .foregroundColor(.blue)
                            .frame(width: 250,alignment: .leading)
                        
                    }
                    HStack{
                        Text("Date:")
                            .frame(width: 70,alignment: .trailing)
                            .bold()
                        Text("29 / 12 / 2022")
                            .foregroundColor(.blue)
                            .frame(width: 250,alignment: .leading)
                        
                    }
                    HStack{
                        Text("Time:")
                            .frame(width: 70,alignment: .trailing)
                            .bold()
                        Text("06:00 AM")
                            .foregroundColor(.blue)
                            .frame(width: 250,alignment: .leading)
                        
                    }
                    HStack{
                        Image("Image")
                            .resizable()
                            .frame(width: 90, height: 100)
                            .clipShape(Circle())
                            .scaledToFill()
                            .offset(x:100,y:-90)
                        
                    }
                    VStack{
                        Text("WAVO")
                            .bold()
                            .offset(x:100,y:-100)
                    }
                    Divider()
                    HStack{
                        Text("Location:")
                            .fontWeight(.medium)
                            .font(.title3)
                        
                        Text("Berth 14, Jeddah Port")
                            .foregroundColor(.blue)
                    }
                    Map(coordinateRegion: $region)
                        .frame(width: 370, height:200)
                        .cornerRadius(15)
                    Divider()
                }
                    VStack  {
                        HStack{
                            Spacer()

                            Text("Deposit Amount:")
                                .frame(width: 140,alignment: .center)
                                .bold()
                            
                            Text("150 SAR")
                                .foregroundColor(.blue)
                                .frame(width: 250,alignment: .leading)
                        }
                        HStack{
                            Spacer()

                            Text("Discount Code:")
                                .frame(width: 135,alignment: .trailing)
                                .bold()
                            Text("-35 SAR")
                                .foregroundColor(.blue)
                                .frame(width: 250,alignment: .leading)
                            
                        }
                        HStack{
                            Spacer()
                            Text("Total (Incl. VAT):")
                                .frame(width: 135,alignment: .trailing)
                                .bold()
                            Text("270.92 SAR")
                                .foregroundColor(.blue)
                                .frame(width: 250,alignment: .leading)
                            
                        }
                        Divider()
                        Button("Confirm"){
                            
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                       
                        
                        
                        
                        
                        
                    }
                    
                    
                }.navigationTitle("Booking Summary")
                .navigationBarTitleDisplayMode(.inline)
            Spacer()
            
        }
        }
        
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

