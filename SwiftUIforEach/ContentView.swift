//
//  ContentView.swift
//  SwiftUIforEach
//
//  Created by Sinan Ulusan on 14.02.2021.
//

import SwiftUI

struct Result: Identifiable {
    let id = UUID()
    let score: Int
}

struct ContentView: View {
    let results = [Result(score: 8), Result(score: 5), Result(score: 10)]

    var body: some View {
        VStack {
            ForEach(results) { result in
                Text("Result: \(result.score)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
