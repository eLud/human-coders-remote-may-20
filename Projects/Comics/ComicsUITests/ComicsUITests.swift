//
//  ComicsUITests.swift
//  ComicsUITests
//
//  Created by Ludovic Ollagnier on 29/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import XCTest

class ComicsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.navigationBars["Comics List"].buttons["Add"].tap()

        let scrollViewsQuery = app.scrollViews
        let element = scrollViewsQuery.children(matching: .other).element(boundBy: 0)
        element.children(matching: .other).element(boundBy: 0).children(matching: .textField).element.tap()

        let elementsQuery = scrollViewsQuery.otherElements
        elementsQuery.staticTexts["Colorist"].swipeDown()

        let textField = element.children(matching: .other).element(boundBy: 10).children(matching: .textField).element
        textField.tap()
        element.children(matching: .other).element(boundBy: 2).children(matching: .textField).element.tap()

        app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        let key = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        elementsQuery.staticTexts["Language"].swipeDown()
        textField.tap()
        elementsQuery.textFields["Number in serie"].tap()


        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
