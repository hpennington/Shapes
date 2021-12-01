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
    @Binding var label: String
    @Binding var labelColor: Color
    
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
            SwiftBookComponent {
                CircleView(color: color, label: label, labelColor: labelColor)
            }
            
        }
    }
}

struct CircleRed: View {
    @Binding var color: Color
    @Binding var label: String
    @Binding var labelColor: Color
    
    var body: some View {
        H2("A red circle")
        H3("This is a description of a red circle.")
        SwiftBookComponent {
            CircleView(color: color, label: label, labelColor: labelColor)
        }
    }
}

struct CircleDoc: View {
    @State private var circleBlueColor: Color = .blue
    @State private var circleRedColor: Color = .red
    
    @State private var circleBlueLabel: String = "Blue circle"
    @State private var circleRedLabel: String = "Red circle"
    
    @State private var circleBlueLabelColor: Color = .primary
    @State private var circleRedLabelColor: Color = .primary
    
    @ViewBuilder
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
                CircleBlue(color: $circleBlueColor, label: $circleBlueLabel, labelColor: $circleBlueLabelColor)
                HStack {
                    SwiftBookControlColor(color: $circleBlueColor, title: "color")
                    SwiftBookControlColor(color: $circleBlueLabelColor, title: "labelColor")
                    SwiftBookControlText(text: $circleBlueLabel, label: "label")
                }
                argsTableView()
            }
            Spacer(minLength: 50)
            VStack {
                CircleRed(color: $circleRedColor, label: $circleRedLabel, labelColor: $circleRedLabelColor)
                HStack {
                    SwiftBookControlColor(color: $circleRedColor, title: "color")
                    SwiftBookControlColor(color: $circleRedLabelColor, title: "labelColor")
                    SwiftBookControlText(text: $circleRedLabel, label: "label")
                }
                argsTableView()
            }
        }
    }
}
