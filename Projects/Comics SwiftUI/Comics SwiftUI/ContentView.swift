//
//  ContentView.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 27/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var title = ""
    @State private var edition = ""
    @State private var numberOfPages = 0
    @State private var author = ""
    @State private var illustrator = ""
    @State private var colorist = ""
    @State private var isMemberOfSerie = false
    @State private var numberInSeries = 0
    @State private var seriesName = ""
    @State private var style: Comic.Style = .comic

    var body: some View {
        VStack {
            LabeledTextField(label: "Title", text: $title)
            LabeledTextField(label: "Edition", text: $edition)
            HStack {
                 Text("Number of pages")
                TextField("Number of pages", value: $numberOfPages, formatter: NumberFormatter())
             }
            HStack {
                Text("Author")
                TextField("Author", text: $author)
            }
            HStack {
                Text("Illustrator")
                TextField("Illustrator", text: $illustrator)
            }
            HStack {
                Text("Colorist")
                TextField("Colorist", text: $colorist)
            }
            Toggle(isOn: $isMemberOfSerie) {
                Text("Member of serie")
            }
            if isMemberOfSerie {
                HStack {
                    TextField("Serie's name", text: $seriesName)
                    Text("Number :")
                    TextField("Number of pages", value: $numberInSeries, formatter: NumberFormatter())
                }
            }
            Picker("Style", selection: $style) {
                ForEach(Comic.Style.allCases, id: \.self) {
                    Text($0.rawValue).tag($0)
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

struct LabeledTextField: View {

    var label: String
    @Binding var text: String

    var body: some View {
        HStack {
            Text(label)
            TextField(label, text: $text)
        }
    }
}
