import Foundation



struct Comic {

    //Enum with raw values
    enum Style: String {
        case manga
        case comic
        case french = "franco belge"
    }

    //Enum with associated value
    enum Serie {
        case standalone
        case serie(name: String, number: Int)

        var stringValue: String {
            switch self {
            case .standalone:
                return "Numéro unique"
            case .serie (let name, let number):
                return "Tome \(number) de la série \(name)"
            }
        }
    }

    let title: String
    let nbPage: UInt
    let author: String
    let illustrator: String
    let colorist: Optional<String>
    let serie: Serie
//    let numberInSerie: UInt?
    let style: Style
    let language: String
    let editor: String
    let isbn: String?
    let summary: String
    var coverImage: URL?
    let publicationDate: Date
    let edition: String
    var isRead: Bool
    let price: Double
    var note: Int?

}

class Library {

    private(set) var comics: [Comic] = []

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

let library = Library()
let comic = Comic(title: "", nbPage: 0, author: "", illustrator: "", colorist: "", serie: .serie(name: "Largo Winch", number: 2), style: .french, language: "", editor: "", isbn: "", summary: "", coverImage: nil, publicationDate: Date(), edition: "", isRead: false, price: 0.0, note: nil)

comic.serie.stringValue

//BD
/*
 name
 nbPage
 author
 illustrator
 colorist
 serie
 style
 language
 editor
 isbn
 summary
 cover
 publicationDate
 edition
 isRead
 price
 note
 */

//Library

/*

 
 */


