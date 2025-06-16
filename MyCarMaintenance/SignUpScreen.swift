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
    @State private var confirmPassword = ""
    @State private var isSignedUp = false
    

    var body: some View {
        
        ZStack{
            Theme.mainBackground.ignoresSafeArea()
            ScrollView{
                
                VStack(spacing: 24) {
                    VStack(spacing: 12){
                        PrimaryAppIcon()
                        Text("Create Your Account")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .ignoresSafeArea()
                    }
                    .padding(.top, 40)
                    
                    VStack(spacing: 16) {
                        
                        TextField("Email: ", text: $email)
                            .inputStyle()
                        SecureField("Password", text: $password)
                            .inputStyle()
                        SecureField("Confirm Password", text: $confirmPassword)
                            .inputStyle()
                        
                        Button("Sign Up") {
                            isSignedUp = true
                        }
                        .primaryButtonStyle()
                        
                    }
                    .frame(alignment: .top)
                    .padding()
                    .background(Theme.accentGray)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    Spacer()
                }
                .padding()
            }
                
        }
    }
}

#Preview {
    SignUpScreen()
}
