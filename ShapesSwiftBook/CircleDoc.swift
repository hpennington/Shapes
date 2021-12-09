//
//  CircleStories.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct CircleBlue: View {
    @State private var color: Color = .blue
    @State private var label: String = "Blue Circle"
    @State private var labelColor: Color = .primary
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                H2("We love a good blue circle")
                    .fixedSize()
                Image("heart")
                    .scaleEffect(0.075)
                    .frame(width: 32, height: 32)
            }
            P("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            P("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
            VStack {
                SwiftBookComponent() {
                    CircleView(color: color, label: label, labelColor: labelColor)
                }
                HStack {
                    SwiftBookControlColor(color: $color, title: "color")
                    SwiftBookControlColor(color: $labelColor, title: "labelColor")
                    SwiftBookControlText(text: $label, label: "label")
                }
            }
        }
    }
}

struct CircleRed: View {
    @State private var color: Color = .red
    @State private var label: String = "Red Circle"
    @State private var labelColor: Color = .primary
    
    var body: some View {
        VStack {
            H2("A red circle")
            H3("This is a description of a red circle.")
            SwiftBookComponent() {
                CircleView(color: color, label: label, labelColor: labelColor)
            }
            HStack {
                SwiftBookControlColor(color: $color, title: "color")
                SwiftBookControlColor(color: $labelColor, title: "labelColor")
                SwiftBookControlText(text: $label, label: "label")
            }
        }
        
    }
}

struct CircleDoc: View {
    func argsTableView() -> some View {
        SwiftBookArgsTable {
            VStack {
                SwiftBookArgRow(title: "color", description: "The color of the circle", type: .color)
                SwiftBookArgRow(title: "label", description: "The label to display on the circle", type: .string)
                SwiftBookArgRow(title: "labelColor", description: "The color of the label", type: .color)
            }
        }
    }
    
    var body: some View {
        VStack {
            H1("CircleView")
            P("A View which is a circle.")
            VStack {
                CircleBlue()
                argsTableView()
            }
            Spacer(minLength: 100)
            VStack {
                CircleRed()
                argsTableView()
            }
        }
    }
}
