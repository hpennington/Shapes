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
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $circleDocRedColor, title: "color")),
                        ],
                    ],
                    circleBlueColor: $circleDocBlueColor,
                    circleRedColor: $circleDocRedColor
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
