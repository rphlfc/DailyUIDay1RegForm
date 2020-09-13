//
//  RegisterUI.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 12/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                CustomNavigationView(showBackButton: true)
                
                Text("Register")
                    .font(.system(size: 24, weight: .medium))
                    .padding(.top)
                
                Text("Let's start")
                    .padding(.top)
                
                RegisterFormView()
                
                HStack {
                    RoundedRectangle(cornerRadius: 1)
                        .frame(height: 1)
                    
                    Text("Or")
                        .padding(.horizontal)
                    
                    RoundedRectangle(cornerRadius: 1)
                        .frame(height: 1)
                }
                .padding(.top)
                
                LoginSocialView()
                
                HaveAnAccountView(text: "Already have an account?", buttonTitle: "Sign in")
                
                Spacer()
            }
            .padding(.horizontal, 32)
            .foregroundColor(.white)
        }
    }
}

struct RegisterFormView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            CustomTextField("Name", text: self.$name)
            
            CustomTextField("Email", text: self.$email)
            
            CustomTextField("Password", text: self.$password, isSecure: true)
            
            Button(action: {
                
            }) {
                Text("Register")
                    .font(.system(size: 20))
                    .frame(width: 250, height: 60)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color(#colorLiteral(red: 0.9938417077, green: 0.6875110865, blue: 0.5313872099, alpha: 1))))
                    .padding(.top)
            }
        }
    }
}

struct CustomTextField: View {
    var label: String
    @Binding var text: String
    var isSecure: Bool
    
    @State private var isEditing = false
    
    init(_ label: String, text: Binding<String>, isSecure: Bool = false) {
        self.label = label
        self._text = text
        self.isSecure = isSecure
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(self.label)
                .font(.system(size: self.isEditing ? 12 : 16))
                .offset(y: self.isEditing ? -32 : -6)
                .animation(.easeInOut)
            
            VStack {
                TextField("", text: self.$text, onEditingChanged: { changed in
                    self.onEditingChanged(changed: changed)
                })
                
                RoundedRectangle(cornerRadius: 1)
                    .frame(height: 1)
            }
        }
        .padding(.top, 32)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
    }
    
    func onEditingChanged(changed: Bool) {
        if changed {
            self.isEditing = true
        } else {
            if self.text.isEmpty {
                self.isEditing = false
            }
        }
    }
}

struct RegisterUI_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
