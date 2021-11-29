//
//  ContentView.swift
//  ShapesSwiftBook
//
//  Created by Hayden Pennington on 11/27/21.
//

import SwiftUI
import SwiftBook

struct ContentView: View {
    @State var colors = [Color.red, Color.blue]
    
    var body: some View {
        SwiftBookControlsColor(colors: $colors)
        SwiftBook(docs: [
            CircleDoc(circleBlueColor: $colors[0], circleRedColor: $colors[1]),
            RectangleDoc(),
        ], colors: $colors)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
