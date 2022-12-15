//
//  ContentView.swift
//  WV-HomePage
//
//  Created by Renad Fahad Althobaiti on 13/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
        
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        return NavigationView {
            GeometryReader { geometry in
                
                
                ZStack(alignment: .leading){
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }.gesture(drag)
            }
//            .navigationBarTitle("Explore Page", displayMode: .inline)
            .navigationBarItems(leading: (
                                Button(action: {
                                    withAnimation {
                                        self.showMenu.toggle()
                                    }
                                }) {
                                    Image(systemName: "line.horizontal.3")
                                        .foregroundColor(Color("blue1"))
                                        .imageScale(.large)
                                }
                            ))
        }
    }

}

struct MainView: View {
    
    @Binding var showMenu: Bool
    @State var From: Date = Calendar.current.date(byAdding: DateComponents(year: -40), to: Date()) ?? Date()
    @State private var date = Date()
    @State private var val = 1
    @State private var val2 = 1
    
    func inc(){
        val += 1
    }
    
    func dec(){
        val -= 1
    }
    
    var body: some View {
        Button(action: {
            withAnimation{
                self.showMenu = true
            }
        }) {
            //Text("Show Menu")
        }
        
        VStack {
            Text("Explore Page")
                .offset(y: -30)
                .bold()
            HStack{
                ZStack {
                    DatePicker("", selection: $date, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.compact)
                        .labelsHidden()
                    SwiftUIWrapper {

                        Text("From: mm/dd/yy")
                            .opacity(0.5)
                            .foregroundColor(Color("blue1"))
                            .padding().frame(width: 172, height: 42)
                        //.border(Color("blue1"), width: 2)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("blue1"),lineWidth: 2)
                            )
                    }.allowsHitTesting(false)
                    
                }
                ZStack {
                    DatePicker("", selection: $date, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.compact)
                        .labelsHidden()
                    SwiftUIWrapper {
                        Text("To: mm/dd/yy")
                            .opacity(0.5)
                            .foregroundColor(Color("blue1"))
                            .padding().frame(width: 172, height: 42)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("blue1"),lineWidth: 2)
                            )
                    }.allowsHitTesting(false)

                }
                
            }.aspectRatio(contentMode: .fit)
            HStack{
                ZStack{
                    HStack{
                        Text("Adults:")
                            .opacity(0.5)
                            .foregroundColor(Color("blue1"))
                            
                        Button{
                            inc()
                        }label:{
                            Image(systemName: "plus.circle")
                                .renderingMode(.template)
                                .foregroundColor(Color("mg"))
                        }
                        
                        Text("\(val)").foregroundColor(Color("blue1"))
                        Button{
                            dec()
                        }label:{
                            Image(systemName: "minus.circle")
                                .renderingMode(.template)
                                .foregroundColor(Color("mg"))
                        }
                    }.padding().frame(width: 172, height: 42)
                     .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("blue1"),lineWidth: 2))
                }
                Spacer().frame(width: 30)
                VStack{
                    Menu{
                        Button(action: { }, label: {
                            Text("Jeddah")
                        })
                        Button(action: { }, label: {
                            Text("Dammam")
                        })
                        Button(action: { }, label: {
                            Text("Yanbu")
                        })
                    } label: {
                        Label (
                            title: {Text("Location").opacity(0.5).foregroundColor(Color("blue1"))},
                            icon: {Image(systemName: "chevron.down").renderingMode(.template)
                                    .foregroundColor(Color("mg"))
                            }
                        ).padding().frame(width: 172, height: 42)
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("blue1"),lineWidth: 2))
                    }
                }
            }
            
            ScrollView{
                VStack{
                    TabView{
                        ForEach(0..<3){ i in
                            ZStack{
                                Image("h1")
                                    .resizable()
                                Image("h2")
                                    .resizable()
                                Image("h3")
                                    .resizable()
                            }
                            
                            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        }
                        
                        .padding(.all, 10)
                    }
                    .frame(width: UIScreen.main.bounds.width,height: 230)
                    .tabViewStyle(PageTabViewStyle())
                    
                    HStack{
                        Text("Jeddah, SA").bold()
                        Spacer()
                        Image(systemName: "star.fill")
                        Text("4.8")
                    }.padding(.all, 10)
                    
                    Text("859 kilometers away").opacity(0.3)
                        .padding(.leading, -187)
                        .padding(.top, -10)
                    
                    TabView{
                        ForEach(0..<3){ i in
                            ZStack{
                                Image("h2")
                                    .resizable()
                                Image("h3")
                                    .resizable()
                                Image("h1")
                                    .resizable()
                            }
                            
                            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        }
                        
                        .padding(.all, 10)
                    }
                    .frame(width: UIScreen.main.bounds.width,height: 230)
                    .tabViewStyle(PageTabViewStyle())
                    
                    HStack{
                        Text("Yanbu, SA").bold()
                        Spacer()
                        Image(systemName: "star.fill")
                        Text("4.0")
                    }.padding(.all, 10)
                    
                    Text("200 kilometers away").opacity(0.3)
                        .padding(.leading, -187)
                        .padding(.top, -10)
                    
                    TabView{
                        ForEach(0..<3){ i in
                            ZStack{
                                Image("h3")
                                    .resizable()
                                Image("h2")
                                    .resizable()
                                Image("h2")
                                    .resizable()
                            }
                            
                            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        }
                        
                        .padding(.all, 10)
                    }
                    .frame(width: UIScreen.main.bounds.width,height: 230)
                    .tabViewStyle(PageTabViewStyle())
                    
                    HStack{
                        Text("Dammam, SA").bold()
                        Spacer()
                        Image(systemName: "star.fill")
                        Text("3.9")
                    }.padding(.all, 10)
                    
                    Text("400 kilometers away").opacity(0.3)
                        .padding(.leading, -187)
                        .padding(.top, -10)
                }
                
                
            }
        }
        

    }
    
    struct SwiftUIWrapper<T: View>: UIViewControllerRepresentable {
        let content: () -> T
        func makeUIViewController(context: Context) -> UIHostingController<T> {
            UIHostingController(rootView: content())
        }
        func updateUIViewController(_ uiViewController: UIHostingController<T>, context: Context) {}
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
