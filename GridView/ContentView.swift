//
//  ContentView.swift
//  GridView
//
//  Created by Shah Md Imran Hossain on 15/4/23.
//

import SwiftUI

struct ContentView: View {
    // fixed 3 column grid layout with following layout design
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
