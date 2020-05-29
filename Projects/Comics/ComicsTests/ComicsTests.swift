//
//  ComicsTests.swift
//  ComicsTests
//
//  Created by Ludovic Ollagnier on 29/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import XCTest
@testable import Comics

class ComicsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddInLibrary() {
        let library = Library()
        let comic = Comic(title: "", nbPage: 0, author: "Ludovic", illustrator: "Ludovic", colorist: nil, serie: .standalone, style: .comic, language: "", editor: "", isbn: "", summary: "", coverImage: nil, publicationDate: Date(), edition: "", isRead: false, price: 0, note: nil)
        library.add(comic: comic)
        XCTAssert(library.allComics.count == 1)
    }

    func testLibraryInit() {
        let library = Library()
        XCTAssert(library.allComics.isEmpty)
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.`
            for _ in 0...10 {
                let library = Library()
                print(library)
            }
        }
    }

}
