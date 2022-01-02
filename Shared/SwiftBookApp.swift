//
//  SwiftBookApp.swift
//  Shared
//
//  Created by Hayden Pennington on 12/31/21.
//

import SwiftUI
import SwiftBook

@main
struct SwiftBookApp: App {
    var body: some Scene {
        SwiftBookWindowGroup {
            SwiftBook([
                ("CircleView", AnyView(CircleDoc())),
                ("RectangleView", AnyView(RectangleDoc())),
            ])
        }
    }
}
