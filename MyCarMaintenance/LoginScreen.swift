//
//  LoginScreen.swift
//  MyCarMaintenance
//
//  Created by Alfred Carra on 5/19/25.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                Theme.mainBackground.ignoresSafeArea()
                
                VStack(spacing :30) {
                    PrimaryAppIcon()
                    Text("Welcome to My Car Maintenance")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    LoginBox()
                    RegisterAccountBox()
                }
                .padding()
            }
        }
    }
}

    
struct LoginBox: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    
    
    var body: some View {
        
        VStack(spacing: 24) {
            TextField("Email", text: $email)
                .inputStyle()
            
            SecureField("Password", text: $password)
                .inputStyle()
            
            Button("Login") {
                
                isLoggedIn = true
            }
            .primaryButtonStyle()
        }
        .padding()
        .background(Theme.accentGray)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

struct RegisterAccountBox: View {
    var body: some View {
        
        HStack {
            Text("Dont have an account?")
                .foregroundColor(.white)
            NavigationLink(destination: SignUpScreen()){
                Text("Register Now!")
                    .foregroundColor(.accentRed)
                    .fontWeight(.semibold)
            }
            
        }
    }
}


    

    #Preview {
        LoginScreen()
    }

