//
//  RectangleStories.swift
//  SwiftBookTarget
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct RectangleBasic: View {
    @Binding var color: Color
    @Binding var large: Bool
    
    var body: some View {
        VStack {
            P("This is a basic rectangle")
            RectangleView(color: color, large: large)
                .padding()
        }
    }
}

struct RectangleLarge: View {
    @Binding var color: Color
    @Binding var large: Bool
    
    var body: some View {
        VStack {
            P("This is a large rectangle")
            RectangleView(color: color, large: large)
                .padding()
        }
    }
}

struct RectangleRed: View {
    @Binding var color: Color
    @Binding var large: Bool
    
    var body: some View {
        VStack {
            P("This is a red rectangle")
            RectangleView(color: color, large: large)
                .padding()
        }
    }
}

struct RectangleDoc: SwiftBookDoc {
    let title = "RectangleView"
    let controls: [[AnyView]]
    
    let argsTable: [SwiftBookArgRow] = [
        SwiftBookArgRow(title: "color", description: "The color of the rectangle", type: .color),
        SwiftBookArgRow(title: "large", description: "Determines the size of the rectangle", type: .bool),
    ]
    
    @Binding var rectangleBasicColor: Color
    @Binding var rectangleBasicLarge: Bool
    
    @Binding var rectangleLargeColor: Color
    @Binding var rectangleLargeLarge: Bool
    
    @Binding var rectangleRedColor: Color
    @Binding var rectangleRedLarge: Bool
    
    var stories: [AnyView] {
        return [
            AnyView(RectangleBasic(color: $rectangleBasicColor, large: $rectangleBasicLarge)),
            AnyView(RectangleLarge(color: $rectangleLargeColor, large: $rectangleLargeLarge)),
            AnyView(RectangleRed(color: $rectangleRedColor, large: $rectangleRedLarge)),
        ]
    }
}
