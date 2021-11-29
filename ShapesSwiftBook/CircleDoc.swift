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
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                H1("We love a good blue circle")
                    .fixedSize()
                Image.init(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .scaleEffect(3.0)
                    
            }.frame(maxWidth: 1000, alignment: .leading)
            P("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            P("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
            SwiftBookComponent {
                CircleView(color: color)
            }
            
        }
    }
}

struct CircleRed: View {
    @Binding var color: Color
    
    var body: some View {
        H1("A red circle")
        H3("This is a description of a red circle.")
        SwiftBookComponent {
            CircleView(color: color)
        }
    }
}

struct CircleDoc: SwiftBookDoc {
    let title = "CircleView"
    let description = "A View which is a circle."
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
