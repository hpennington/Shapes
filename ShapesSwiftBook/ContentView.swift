//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    @State var circleDocBlueColor = Color.blue
    @State var circleDocRedColor = Color.red
    @State var circleDocBlueLabelColor = Color.primary
    @State var circleDocRedLabelColor = Color.primary
    @State var circleDocBlueLabel = "Blue Label"
    @State var circleDocRedLabel = "Red Label"
    @State var rectangleDocBasicColor = Color.orange
    @State var rectangleDocBasicLarge = false
    @State var rectangleDocLargeColor = Color.white
    @State var rectangleDocLargeLarge = true
    @State var rectangleDocRedColor = Color.red
    @State var rectangleDocRedLarge = false
    
    
    var body: some View {
        SwiftBook(
            docs: [
                CircleDoc(
                    controls: [
                        [
                            AnyView(SwiftBookControlColor(color: $circleDocBlueColor, title: "color")),
                            AnyView(SwiftBookControlColor(color: $circleDocBlueLabelColor, title: "labelColor")),
                            AnyView(SwiftBookControlText(text: $circleDocBlueLabel, label: "label")),
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $circleDocRedColor, title: "color")),
                            AnyView(SwiftBookControlColor(color: $circleDocRedLabelColor, title: "labelColor")),
                            AnyView(SwiftBookControlText(text: $circleDocRedLabel, label: "label")),
                        ],
                    ],
                    circleBlueColor: $circleDocBlueColor,
                    circleRedColor: $circleDocRedColor,
                    circleBlueLabel: $circleDocBlueLabel,
                    circleRedLabel: $circleDocRedLabel,
                    circleBlueLabelColor: $circleDocBlueLabelColor,
                    circleRedLabelColor: $circleDocRedLabelColor
                ),
                RectangleDoc(
                    controls: [
                        [
                            AnyView(SwiftBookControlColor(color: $rectangleDocBasicColor, title: "color")),
                            AnyView(SwiftBookControlToggle(active: $rectangleDocBasicLarge, title: "large")),
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $rectangleDocLargeColor, title: "color")),
                            AnyView(SwiftBookControlToggle(active: $rectangleDocLargeLarge, title: "large")),
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $rectangleDocRedColor, title: "color")),
                            AnyView(SwiftBookControlToggle(active: $rectangleDocRedLarge, title: "large")),
                        ],
                    ],
                    rectangleBasicColor: $rectangleDocBasicColor,
                    rectangleBasicLarge: $rectangleDocBasicLarge,
                    rectangleLargeColor: $rectangleDocLargeColor,
                    rectangleLargeLarge: $rectangleDocLargeLarge,
                    rectangleRedColor: $rectangleDocRedColor,
                    rectangleRedLarge: $rectangleDocRedLarge
                ),
            ]
        )
    }
}
