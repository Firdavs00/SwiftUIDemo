//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by MacBook Pro on 08/08/21.
//

import SwiftUI
struct HomeScreen: View, BindingProtocol {
    
@State var showPresent = false
@State var data = "No Data"
    func onReceived(value: String) {
        data = value
    }
    
    var body: some View {
        
        NavigationView{
            VStack{
                Button(action: {
                    showPresent.toggle()
                }, label: {
                    Text("Present")
                        .font(.system(size: 30))
                        
                }).sheet(isPresented: $showPresent, content: {
                    PresentScreen(data: "Pdp", delegate: self)
                })
                Text(data).padding()
            }
            .navigationBarItems(
                leading: Image("ic_menu"),
                trailing:Image(systemName: "camera"))
            .navigationBarTitle(Text("Home"), displayMode: .inline)
            
        }
     
        
         
        }
    }


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
 
