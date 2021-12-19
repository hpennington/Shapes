//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

let documentsTable: [(String, AnyView)] = [
    ("CircleView", AnyView(CircleDoc())),
    ("RectangleView", AnyView(RectangleDoc())),
]

struct ContentView: View {
    var body: some View {
        SwiftBook(documentsTable: documentsTable)
    }
}
