//
//  LoginView.swift
//  LoginPage
//
//  Created by Saqib Adnan on 27/03/2024.
//
//  MARK: Saqib Adnan
//  Instagram
//  MARK: saqib_iosdev

import SwiftUI

struct LoginView: View {
    @State var isActive = false
    
    // MARK: Properties for image animation
    @State var animate: Bool = false
    
    var body: some View {
        
        // MARK: Welcome
            HStack(spacing: 10) {
                Text("Welcome To Learn")
                    .textCase(.uppercase)
                    .foregroundColor(.black)
                    .font(.system(size: 26).weight(.semibold))
                    .offset(y: animate ? 0 : 50)
                Image("character-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .offset(y: animate ? 0 : 50)
            }
            .padding(20)
            .onAppear {
                withAnimation(.easeInOut(duration: 0.9)) {
                    animate.toggle()
                }
            }
        //}
        
        
        // MARK: Text and Secure
            VStack {
                TextFieldView()
            }
        
        // MARK: Remind me and forget
        HStack {
            Image(systemName: "checkmark.square.fill")
                .foregroundColor(isActive ? .black : .white)
                //.background(isActive ? .black : .clear)
                .overlay {
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.black)
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isActive.toggle()
                    }
                }
            Text("Remind me")
                .font(.system(size: 18).weight(.medium))
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("Forget Password?")
                    .foregroundColor(.black)
            })
        }
        .padding(30)
        
        // MARK: Login
            VStack {
                Button(action: {
                    //
                }, label: {
                    Text("Login")
                        .font(.system(size: 20).weight(.semibold))
                        .font(.callout)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 58)
                        .background(Color.black)
                        .cornerRadius(18)
                        
                })
            }
        
        // MARK: Login with Google and Apple ID
        HStack (spacing: 40) {
            Button(action: {
                // action
            }, label: {
                Image("apple")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            })
            
            // MARK: Facebook Button
            Button(action: {
                
            }, label: {
                Image("Fb")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            })
            
            // MARK: Twitter Button
            Button(action: {
                
            }, label: {
                Image("twitter")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            })
            
        }
        .padding(30)
        
        // MARK: Already have an account
        VStack {
            HStack {
                Text("Already have an account?")
                    .font(.system(size: 18))
                Button(action: {
                    // action
                }, label: {
                    Text("Sign In")
                        .font(.system(size: 18).weight(.heavy))
                        .foregroundStyle(Color.black)
                })
            }
        }
        .padding(.top, 40)
    }
}

#Preview {
    LoginView()
}


// MARK: Text and Secure Field struct View
struct TextFieldView: View {
    
    //MARK: Properties
    @State private var email = ""
    @State private var password = ""
    
    @State var animate: Bool = false
    
    var body: some View {
        //MARK: Body structure
            VStack(alignment: .leading, spacing: 12) {
                
                TextField("Email", text: $email)
                    .padding()
                    .foregroundColor(.black)
                    .frame(width: 350, height: 58)
                    .cornerRadius(18)
                    .overlay {
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.black)
                    }
                    .offset(y: animate ? 0 : 10)
                SecureField("Password", text: $password)
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 350, height: 58)
                    .cornerRadius(18)
                    .overlay {
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.black)
                    }
                    .offset(y: animate ? 0 : 10)
            }
            .padding(20)
            .onAppear {
                withAnimation(.easeInOut(duration: 0.9)) {
                    animate.toggle()
                }
            }
    }
}
