//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    var body: some View {
        SwiftBook(documentsTable: [
            ("CircleView", AnyView(CircleDoc())),
            ("RectangleView", AnyView(RectangleDoc())),
        ])
    }
}
