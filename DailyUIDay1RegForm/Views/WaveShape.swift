//
//  WaveShape.swift
//  DailyUIDay1RegForm
//
//  Created by Raphael Cerqueira on 11/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct WaveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.4))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY * 0.7),
                      control1: CGPoint(x: rect.maxX * 0.3, y: rect.maxY * 0.2),
                      control2: CGPoint(x: rect.maxX * 0.4, y: rect.maxY * 0.6))
        
        return path
    }
}

struct WaveShape_Previews: PreviewProvider {
    static var previews: some View {
        WaveShape()
    }
}
