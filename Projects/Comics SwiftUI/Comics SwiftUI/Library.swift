//
//  Library.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 27/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

class Library {

    private(set) var comics: [Comic] = [Comic(title: "Test", nbPage: 0, author: "", illustrator: "", colorist: nil, serie: .standalone, style: .comic, language: "", editor: "", isbn: "", summary: "", coverImage: nil, publicationDate: Date(), edition: "", isRead: false, price: 0, note: nil)]

    var allComics: [Comic] {
        return comics
    }

    func add(comic: Comic) {
        comics.append(comic)
    }

    func remove(comic: Comic) {
        for c in comics.enumerated() where c.element.title == comic.title {
            comics.remove(at: c.offset)
        }

        comics.removeAll {
            return $0.title == comic.title
        }

//        comics.removeFirst(comic)
    }
}
