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
        save()
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

    func save() {

        let jsonEncoder = JSONEncoder()
        let plistEncoder = PropertyListEncoder()
        plistEncoder.outputFormat = .xml

        do {
            let jdata = try jsonEncoder.encode(["Toto", "Titi"])
            let pdata = try plistEncoder.encode(["Toto", "Titi"])
            print(String(data: jdata, encoding: .utf8)!)
            print(String(data: pdata, encoding: .utf8)!)


            let jsonDecoder = JSONDecoder()
            do {
                let array = try jsonDecoder.decode([Int].self, from: jdata)
                print(array)
            } catch {
                print(error)
            }

        } catch {
            print(error)
        }


    }
}
