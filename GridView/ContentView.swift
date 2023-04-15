//
//  ContentView.swift
//  GridView
//
//  Created by Shah Md Imran Hossain on 15/4/23.
//

import SwiftUI

struct ContentView: View {
    // adaptive minimum column column count based on screen size
    let layout = [
        GridItem(.adaptive(minimum: 80))
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
