//
//  ContentView.swift
//  TableCrashExample
//
//  Created by Alex Cross on 8/28/24.
//

import SwiftUI

func exampleViewBag() -> TableViewBag {
    TableViewBag(
        id: UUID().uuidString,
        columns: ["one", "two", "three"],
        rows: [
            ["\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))"],
            ["\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))"],
            ["\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))"],
            ["\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))", "\(Int.random(in: 0..<100))"],
        ])
}

struct ContentView: View {
    @State var viewBag = exampleViewBag()

    var body: some View {
        VStack {
            Button("Send new data") {
                viewBag = exampleViewBag()
            }

            TableView(viewBag: viewBag)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
