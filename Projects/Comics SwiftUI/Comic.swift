//
//  Comic.swift
//  Comics SwiftUI
//
//  Created by Ludovic Ollagnier on 27/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

struct Comic: Hashable, Identifiable {

    let id: UUID = UUID()

    //Enum with raw values
    enum Style: String, CaseIterable, Hashable, Codable {
        case manga
        case comic
        case french = "franco belge"
    }

    //Enum with associated value
    enum Serie: Hashable {

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
