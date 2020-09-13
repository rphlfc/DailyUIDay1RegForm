//
//  BackgroundView.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 12/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color("pink1")
                .edgesIgnoringSafeArea(.top)
            
            WaveShape()
                .foregroundColor(Color("pink2"))
            
            WaveShape()
                .foregroundColor(Color("pink3"))
                .padding(.top, 200)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
