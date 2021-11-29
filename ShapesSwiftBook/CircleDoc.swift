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
    
    var body: some View {
        H1("A blue circle")
        P("This is a description of a blue circle.")
        CircleView(color: color)
            .padding()
    }
}

struct CircleRed: View {
    @Binding var color: Color
    
    var body: some View {
        Text("A Red circle")
            .padding()
        CircleView(color: color)
            .padding()
    }
}

struct CircleDoc: SwiftBookDoc {
    let title = "CircleView"
    let controls: [[AnyView]]
    let argsTable: [SwiftBookArgRow] = [
        SwiftBookArgRow(title: "color", description: "The color of the circle", type: .color)
    ]
    
    @Binding var circleBlueColor: Color
    @Binding var circleRedColor: Color

    var stories: [AnyView] {
        return [
            AnyView(CircleBlue(color: $circleBlueColor)),
            AnyView(CircleRed(color: $circleRedColor)),
        ]
    }
}
