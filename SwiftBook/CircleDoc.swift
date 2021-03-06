//
//  CircleDoc.swift
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
                Component {
                    CircleView(color: color, label: label, labelColor: labelColor)
                }
                ControlsTable {
                    ControlColor(color: $color, title: "color")
                    ControlColor(color: $labelColor, title: "labelColor")
                    ControlText(text: $label, label: "label")
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
        Bookable(title: "A red circle", detail: "This is a description of a red circle.") {
            CircleView(color: color, label: label, labelColor: labelColor)
        }
        ControlsTable {
            ControlColor(color: $color, title: "color")
            ControlColor(color: $labelColor, title: "labelColor")
            ControlText(text: $label, label: "label")
        }
    }
}

struct CircleDoc: View {
    func ArgsTable() -> some View {
        ArgumentsTable {
            ArgumentRow(title: "color", description: "The color of the circle", type: .color)
            ArgumentRow(title: "label", description: "The label to display on the circle", type: .string)
            ArgumentRow(title: "labelColor", description: "The color of the label", type: .color)
        }
    }
    
    var body: some View {
        Document(title: "CircleView", detail: "A View which is a circle.") {
            CircleBlue()
            ArgsTable()
            Space()
            CircleRed()
            ArgsTable()
        }
    }
}
