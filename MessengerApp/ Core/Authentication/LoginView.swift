//
//  LoginView.swift
//  MessengerApp
//
//  Created by Aditya Rai on 01/09/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password:  String = ""
    var body: some View {
        NavigationStack{
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
                
                //forgot password
                Button{
                print("Forgot Password")
                } label:{
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                //login button
                Button {
                     print("Handle Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.vertical )

                //facebook login
                HStack{
                     Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                       .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("FaceBook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Continue With Facebook")
                        .foregroundColor(.accentColor)
                        .font(.footnote)
                }
                .padding(.top, 8)
                
                Spacer()
                //signup link
                Divider()
                NavigationLink{
                    RegistrationView()
                } label:{
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold )
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    LoginView()
}
 
