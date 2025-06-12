//
//  LoginScreen.swift
//  MyCarMaintenance
//
//  Created by Alfred Carra on 5/19/25.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        
         
        
        VStack {
           
            Text("Welcome to My Car Maintenance!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            
            LoginBox()
            RegisterAccountBox()
        }
        .padding()
        .background(.gray)
        .cornerRadius(8)
    }
}



struct LoginBox: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    

    var body: some View {
        
        
        
        Text("Login: ")
            .multilineTextAlignment(.leading)
            
        TextField("Email: ", text: $email)
        
        // enter password
        Text("Password: ")
            .multilineTextAlignment(.leading)
        SecureField("Password", text: $password)
        
        
    }
}

struct RegisterAccountBox: View {
    var body: some View {
        
        HStack {
            Text("Dont have an account?")
            NavigationLink(destination: SignUpScreen()){
                Text("Register Now!")
            }
            
        }
    }
}


#Preview {
    LoginScreen()
}
