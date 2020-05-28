//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var message: String = "Hello"

    var body: some View {
        VStack {
            Text(message)
            Button("Change label") {
                self.message = "Hello SwiftUI"
            }
            TextField("Message", text: $message)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            TextField("Message", text: $message)
                .border(Color.gray, width: 1)
                .padding()
            TextField("Message", text: $message)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
