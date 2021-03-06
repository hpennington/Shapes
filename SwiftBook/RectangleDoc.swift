//
//  RectangleDoc.swift
//  SwiftBookTarget
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct RectangleBasic: View {
    @State private var color: Color = .orange
    @State private var large: Bool = false
    
    var body: some View {
        Bookable(title: "This is a basic rectangle", detail: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.") {
            RectangleView(color: color, large: large)
        }
        ControlsTable {
            ControlColor(color: $color, title: "color")
            ControlToggle(active: $large, title: "large")
        }
    }
}

struct RectangleLarge: View {
    @State private var color: Color = .white
    @State private var large: Bool = true
    
    var body: some View {
        Bookable(title: "This is a large rectangle", detail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.") {
            RectangleView(color: color, large: large)
        }
        ControlsTable {
            ControlColor(color: $color, title: "color")
            ControlToggle(active: $large, title: "large")
        }
    }
}

struct RectangleRed: View {
    @State private var color: Color = .red
    @State private var large: Bool = false
    
    var body: some View {
        Bookable(title: "This is a red rectangle", detail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.") {
            RectangleView(color: color, large: large)
        }
        ControlsTable {
            ControlColor(color: $color, title: "color")
            ControlToggle(active: $large, title: "large")
        }
    }
}

struct RectangleDoc: View {
    func ArgsTable() -> some View {
        ArgumentsTable {
            ArgumentRow(title: "color", description: "The color of the rectangle", type: .color)
            ArgumentRow(title: "large", description: "Determines the size of the rectangle", type: .bool)
        }
    }
    
    var body: some View {
        Document(title: "RectangleView", detail: "A rectangular View") {
            RectangleBasic()
            ArgsTable()
            Space()
            RectangleLarge()
            ArgsTable()
            Space()
            RectangleRed()
            ArgsTable()
        }
    }
}
