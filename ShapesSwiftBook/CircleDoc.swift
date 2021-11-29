//
//  CircleStories.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct CircleBlue: View {
    @Binding var color: Color
    
    init(color: Binding<Color>) {
        self._color = color
    }
    
    var body: some View {
        Text("A blue circle")
            .padding()
        CircleView(color: color)
            .padding()
    }
}

struct CircleRed: View {
    @Binding var color: Color
    
    init(color: Binding<Color>) {
        self._color = color
    }
    
    var body: some View {
        Text("A Red circle")
            .padding()
        CircleView(color: color)
            .padding()
    }
}

struct CircleDoc: SwiftBookDoc {
    let title = "CircleView"
    
    @Binding var circleBlueColor: Color
    @Binding var circleRedColor: Color
    
    init(circleBlueColor: Binding<Color>, circleRedColor: Binding<Color>) {
        self._circleBlueColor = circleBlueColor
        self._circleRedColor = circleRedColor
    }
    
    var stories: [AnyView] {
        return [
            AnyView(CircleBlue(color: $circleBlueColor)),
            AnyView(CircleRed(color: $circleRedColor)),
        ]
    }
}
