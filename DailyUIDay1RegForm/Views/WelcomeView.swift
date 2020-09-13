//
//  LoginView.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 11/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack {
                    VStack {
                        CustomNavigationView(showBackButton: false)
                            .padding(.horizontal, 32)
                        
                        Spacer()
                        
                        Text("Welcome")
                            .font(.system(size: 64, weight: .light))
                        
                        Spacer()
                        
                        Text("Please register to continue")
                        
                        //NavigationLink(destination: RegisterView()) {
                        Button(action: {}, label: {
                            Text("Register")
                                .font(.system(size: 20))
                                .frame(width: 250, height: 60)
                                .background(RoundedRectangle(cornerRadius: 30).fill(Color(#colorLiteral(red: 0.9938417077, green: 0.6875110865, blue: 0.5313872099, alpha: 1))))
                        })
                        //}
                        .padding(.top, 32)
                        
                        HaveAnAccountView(text: "Already a user?", buttonTitle: "Login now")
                        
                        Spacer()
                    }
                    .foregroundColor(.white)
                }
            }
            .navigationBarHidden(true)
            .navigationBarTitle("")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
