//
//  CircleStories.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct CircleBlue: View {
    var body: some View {
        Text("A blue circle")
            .padding()
        CircleView(color: .blue)
    }
}

struct CircleRed: View {
    var body: some View {
        Text("A Red circle")
            .padding()
        CircleView(color: .red)
    }
}

struct CircleDoc: SwiftBookDoc {
    let title = "CircleView"
    
    let stories: [AnyView] = [
        AnyView(CircleBlue()),
        AnyView(CircleRed()),
    ]
}

