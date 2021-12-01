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
        H3("This is a basic rectangle")
        P("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
        P("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        SwiftBookComponent {
            RectangleView(color: color, large: large)
        }
    }
}

struct RectangleLarge: View {
    @Binding var color: Color
    @Binding var large: Bool
    
    var body: some View {
        H3("This is a large rectangle")
        P("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
        P("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        SwiftBookComponent {
            RectangleView(color: color, large: large)
        }
    }
}

struct RectangleRed: View {
    @Binding var color: Color
    @Binding var large: Bool
    
    var body: some View {
        H3("This is a red rectangle")
        P("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.")
        P("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
        SwiftBookComponent {
            RectangleView(color: color, large: large)
        }
    }
}

struct RectangleDoc: View {
    @State var rectangleBasicColor: Color = .orange
    @State var rectangleBasicLarge: Bool = false
    
    @State var rectangleLargeColor: Color = .white
    @State var rectangleLargeLarge: Bool = true
    
    @State var rectangleRedColor: Color = .red
    @State var rectangleRedLarge: Bool = false
    
    @ViewBuilder
    func argsTableView() -> some View {
        SwiftBookArgsTable {
            VStack {
                SwiftBookArgRow(title: "color", description: "The color of the rectangle", type: .color)
                SwiftBookArgRow(title: "large", description: "Determines the size of the rectangle", type: .bool)
            }
        }
    }
    
    var body: some View {
        VStack {
            VStack {
                H1("RectangleView")
                P("A rectangular View")
            }
            VStack {
                RectangleBasic(color: $rectangleBasicColor, large: $rectangleBasicLarge)
                HStack {
                    SwiftBookControlColor(color: $rectangleBasicColor, title: "color")
                    SwiftBookControlToggle(active: $rectangleBasicLarge, title: "large")
                }
                argsTableView()
            }
            Spacer(minLength: 50)
            VStack {
                RectangleLarge(color: $rectangleLargeColor, large: $rectangleLargeLarge)
                HStack {
                    SwiftBookControlColor(color: $rectangleLargeColor, title: "color")
                    SwiftBookControlToggle(active: $rectangleLargeLarge, title: "large")
                }
                argsTableView()
            }
            Spacer(minLength: 50)
            VStack {
                RectangleRed(color: $rectangleRedColor, large: $rectangleRedLarge)
                HStack {
                    SwiftBookControlColor(color: $rectangleRedColor, title: "color")
                    SwiftBookControlToggle(active: $rectangleRedLarge, title: "large")
                }
                argsTableView()
            }
        }
    }
}
