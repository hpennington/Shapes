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
                            AnyView(SwiftBookControlColor(color: $circleDocBlueColor)),
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $circleDocRedColor)),
                        ],
                    ],
                    circleBlueColor: $circleDocBlueColor,
                    circleRedColor: $circleDocRedColor
                ),
                RectangleDoc(
                    controls: [
                        [
                            AnyView(SwiftBookControlColor(color: $rectangleDocBasicColor)),
                            AnyView(SwiftBookControlToggle(active: $rectangleDocBasicLarge, title: "Large")),
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $rectangleDocLargeColor)),
                            AnyView(SwiftBookControlToggle(active: $rectangleDocLargeLarge, title: "Large")),
                        ],
                        [
                            AnyView(SwiftBookControlColor(color: $rectangleDocRedColor)),
                            AnyView(SwiftBookControlToggle(active: $rectangleDocRedLarge, title: "Large")),
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
