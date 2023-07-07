//
//  ContentView.swift
//  ListScroll
//
//  Created by Nawal Ahmed on 07/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(1...10, id: \.self) { index in
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(1...20, id: \.self) { number in
                            Text("Cell \(number)")
                                .padding()
                                .frame(width: 150)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                    }
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
