//
//  HaveAnAccountView.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 12/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HaveAnAccountView: View {
    var text: String
    var buttonTitle: String
    
    var body: some View {
        VStack {
            Text(self.text)
                .padding(.top, 64)
            
            Button(action: {
                
            }) {
                Text(self.buttonTitle)
                    .font(.system(size: 20))
                    .frame(width: 250, height: 60)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color(#colorLiteral(red: 0.9422364235, green: 0.6058092713, blue: 0.5417391658, alpha: 1))))
            }
            .padding(.top, 32)
        }
    }
}

struct HaveAnAccountView_Previews: PreviewProvider {
    static var previews: some View {
        HaveAnAccountView(text: "Already a user?", buttonTitle: "Login now")
    }
}
