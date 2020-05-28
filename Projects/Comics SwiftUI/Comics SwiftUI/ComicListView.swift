//
//  ComicListView.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ComicListView: View {

    var body: some View {
        List(library.allComics) { comic in
            NavigationLink(destination: ComicDetailsView(comic: comic)) {
                Image(systemName: "plus")
                VStack(alignment: .leading) {
                    Text(comic.title)
                    Text(comic.author)
                        .font(.caption)
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Comics List")
        .navigationBarItems(trailing: Button(action: {

        }, label: {
            Image(systemName: "plus")
        }))
    }
}

struct ComicListView_Previews: PreviewProvider {
    static var previews: some View {
        ComicListView()
    }
}
