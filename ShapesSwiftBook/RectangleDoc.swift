//
//  RectangleStories.swift
//  SwiftBookTarget
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct RectangleBasic: View {
    var body: some View {
        VStack {
            Text("This is a basic rectangle")
                .padding()
            RectangleView(color: .white, large: false)
        }
    }
}

struct RectangleLarge: View {
    var body: some View {
        VStack {
            Text("This is a large rectangle")
                .padding()
            RectangleView(color: .white, large: true)
        }
    }
}

struct RectangleRed: View {
    var body: some View {
        VStack {
            Text("This is a red rectangle")
                .padding()
            RectangleView(color: .red, large: false)
        }
    }
}

struct RectangleDoc: SwiftBookDoc {
    let title = "RectangleView"
    
    let stories: [AnyView] = [
        AnyView(RectangleBasic()),
        AnyView(RectangleLarge()),
        AnyView(RectangleRed()),
    ]
}
