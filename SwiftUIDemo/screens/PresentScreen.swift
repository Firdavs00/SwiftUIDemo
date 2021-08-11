//
//  PresentScreen.swift
//  SwiftUIDemo
//
//  Created by MacBook Pro on 10/08/21.
//

import SwiftUI

struct PresentScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var data = "No Data"
    var delegate: BindingProtocol?
    var body: some View {
        NavigationView{
        VStack{
            
        Button(action: {
            delegate?.onReceived(value: "Online")
            presentation.wrappedValue.dismiss()
        }, label: {
            Text("Home page")
        })
        
        Text(data).padding()
        }
        .navigationBarTitle(Text("Present"), displayMode: .inline)
        }
    }
}

struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}
