//
//  FormView.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct FormView: View {

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
    @State private var date = Date()
    
    var body: some View {
        Form {
            Section {
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

                DatePicker(selection: $date, displayedComponents: .date) {
                    Text("Publication Date")
                }
            }

            Section(footer: Text("Oublie pas d'enregistrer")) {
                Button("Save") {

                    let serie: Comic.Serie
                    if self.isMemberOfSerie {
                        serie = .serie(name: self.seriesName, number: self.numberInSeries)
                    } else {
                        serie = .standalone
                    }

                    let comic = Comic(title: self.title, nbPage: UInt(self.numberOfPages), author: self.author, illustrator: self.illustrator, colorist: self.colorist, serie: serie, style: self.style, language: "", editor: "", isbn: "", summary: "", coverImage: nil, publicationDate: Date(), edition: "", isRead: true, price: 0, note: nil)

                    library.add(comic: comic)
                }
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
