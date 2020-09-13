//
//  LoginSocialView.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 12/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct LoginSocialView: View {
    var body: some View {
        HStack {
            LoginSocialButtonView(image: "google", title: "Google")
            
            Spacer()
            
            LoginSocialButtonView(image: "facebook", title: "Facebook")
        }
    }
}

struct LoginSocialButtonView: View {
    var image: String
    var title: String
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(self.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                Text(self.title)
                    .foregroundColor(.gray)
            }
            .frame(width: 140, height: 50)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct LoginSocialView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSocialView()
            .padding()
            .background(Color.gray)
    }
}
