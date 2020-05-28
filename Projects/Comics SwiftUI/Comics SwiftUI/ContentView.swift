//
//  ContentView.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 27/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

let library = Library()

struct ContentView: View {

    var body: some View {
        TabView {
            NavigationView {
                ComicListView()
            }.tabItem {
                Image(systemName: "list.bullet")
                Text("Comic List")
            }
            NavigationView {
                Text("Shop")
                    .font(.largeTitle)
            }.tabItem {
                Image(systemName: "cart")
                Text("Shop")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
