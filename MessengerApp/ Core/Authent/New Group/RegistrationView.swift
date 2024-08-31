//
//  RegistrationView.swift
//  MessengerApp
//
//  Created by Aditya Rai on 01/09/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password:  String = ""
    @State private var fullName: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            //logo Image
            Image("MessageLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .padding()
            
            
            //text fields
            VStack{
                TextField("Enter your fullName", text: $fullName )
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your Email", text: $email )
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your Password", text: $password )
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                
            }
            Spacer()
            //login button
            Button {
                 print("Handle Login")
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical )
            
            Spacer()
            //signup link
            Divider()
            Button {
                dismiss()
            } label:{
                HStack(spacing: 3){
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold )
                }
                .font(.footnote)
                
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
