//
//  SignUpScreen.swift
//  MyCarMaintenance
//
//  Created by Alfred Carra on 6/5/25.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    

    var body: some View {
        
        
        
        Text("Enter your email: ")
            .multilineTextAlignment(.leading)
            
        TextField("Email: ", text: $email)
        
        // enter password
        Text("Password: ")
            .multilineTextAlignment(.leading)
        SecureField("Password", text: $password)
        
        
    }
}

#Preview {
    SignUpScreen()
}
