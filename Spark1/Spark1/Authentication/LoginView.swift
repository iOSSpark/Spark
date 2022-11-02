//
//  LoginView.swift
//  Spark1
//
//  Created by Jessica Kent on 10/29/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
//   @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple,Color.orange]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("Spark Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220,height: 100)
                        .foregroundColor(.white)
                        .padding(50)
                    
                    Spacer()
                    // email field
                    VStack(spacing: 20){
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        // password field
                        
                        CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "lock")
                             .padding()
                             .background(Color(.init(white: 1, alpha: 0.15)))
                             .cornerRadius(10)
                             .foregroundColor(.white)
                             .padding(.horizontal, 32)
                        
                        // forgot password
                        
                        HStack {
                            Spacer()
                            
                            Button(action: {}, label: {
                                Text("Forget Password?")
                                    .font(.system(size: 13, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding(.top)
                                    .padding(.trailing, 28)
                            })
                        }
                        
                        // sign in
                        
                        Button(action: {
                      //      viewModel.login(withEmail: email, password: password)
                            
                        }, label: {
                            Text("Sign In")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 360, height: 50)
                                .background(Color(.systemBlue))
                                .clipShape(Capsule())
                                .padding()
                        })
                        
                        // go to sign in
                         
                        Spacer()
                        
                        NavigationLink (
                            destination: RegistrationView()
                                .navigationBarBackButtonHidden(true),
                            label: {
                                HStack {
                                Text("Don't have an account?")
                                    .font(.system(size: 14))
                                
                                Text("Sign Up")
                                    .font(.system(size: 14, weight: .semibold))
                            }.foregroundColor(.white)
                            }).padding(.bottom, 16)
        
                     }
                    .padding(.top, -44)
                    }
                }
            }
        }
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
