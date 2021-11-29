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
            Text("This is a basic rectangle")
                .padding()
            RectangleView(color: color, large: large)
                .padding()
        }
    }
}

struct RectangleLarge: View {
    var body: some View {
        VStack {
            Text("This is a large rectangle")
                .padding()
            RectangleView(color: .white, large: true)
                .padding()
        }
    }
}

struct RectangleRed: View {
    var body: some View {
        VStack {
            Text("This is a red rectangle")
                .padding()
            RectangleView(color: .red, large: false)
                .padding()
        }
    }
}

struct RectangleDoc: SwiftBookDoc {
    let title = "RectangleView"
    
    @Binding var rectangleBasicColor: Color
    @Binding var rectangleBasicLarge: Bool
    
    var stories: [AnyView] {
        return [
            AnyView(RectangleBasic(color: $rectangleBasicColor, large: $rectangleBasicLarge)),
            AnyView(RectangleLarge()),
            AnyView(RectangleRed()),
        ]
    }
}
