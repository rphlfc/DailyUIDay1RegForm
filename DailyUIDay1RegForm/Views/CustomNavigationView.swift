//
//  CustomNavigationView.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 12/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CustomNavigationView: View {
    var showBackButton: Bool
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            if self.showBackButton {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 48, weight: .ultraLight))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 48, weight: .ultraLight))
                    .foregroundColor(.white)
            }
        }
        .padding(.top, 32)
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView(showBackButton: true)
    }
}
