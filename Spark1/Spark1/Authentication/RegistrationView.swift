//
//  RegistrationView.swift
//  Spark1
//
//  Created by Jessica Kent on 10/29/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode

    var body: some View {
        ZStack {
            //  LinearGradient(gradient: Gradient(colors: [Color.pink,Color.purple]), startPoint: .top, endPoint: .bottom)
            LinearGradient(gradient: Gradient(colors: [.blue, .purple, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Image("Spark Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 100)
                    .foregroundColor(.white)
                    .padding(50)
                
                
                VStack {
                    Button(action: {}, label: {
                        
                    })
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        
                        CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "person")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                    }
                    Button(action: {
                        // viewModel.register(withEmail: email, password: password, image:
                        //selectedImage, fullname: fullname, username: username)
                    }, label: {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                            .padding()
                    })
                    Spacer()
                    
                    Button(action: { mode.wrappedValue.dismiss() },
                           label: {
                        HStack {
                            Text("Already have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sign In")
                                .font(.system(size: 14, weight:
                                        .semibold))
                        }.foregroundColor(.white)
                    })
                }
                
            }
                   
    }
                   }
                   
                   
                   
                   struct RegistrationView_Previews: PreviewProvider {
                static var previews: some View {
                    RegistrationView()
                }
            }
                   
            }
