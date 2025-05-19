//
//  ContentView.swift
//  MyCarMaintenance
//
//  Created by Alfred Carra on 5/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var greeting: String = "Welcome to My Car Maintenance!"
        
        VStack {
           
            Text(greeting)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            LoginBox()
            
        }
        .padding()
    }
}

struct LoginBox: View {
    var body: some View {
        
        
        
        Text("Sign in with email: ")
        //TextField("ex: user@example.com", text: <#Binding<String>#>)
        Text("Sign in with password: ")
        //TextField("Password", text: <#Binding<String>#>)
        
        
    }
}





#Preview {
    ContentView()
}
