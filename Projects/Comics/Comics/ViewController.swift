//
//  ViewController.swift
//  Comics
//
//  Created by Ludovic Ollagnier on 26/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlet -> Variables

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var editionTextField: UITextField!
    @IBOutlet weak var isInSerieSwitch: UISwitch!
    @IBOutlet weak var seriesNameTextField: UITextField!
    @IBOutlet weak var seriesNumberTextFIeld: UITextField!
    @IBOutlet weak var numberOfPagesTextField: UITextField!
    @IBOutlet weak var styleSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print("Vue chargée")

        let styles = Comic.Style.allCases
        styleSegmentedControl.removeAllSegments()
        for style in styles {
            styleSegmentedControl.insertSegment(withTitle: style.rawValue, at: styleSegmentedControl.numberOfSegments, animated: true)
        }
        styleSegmentedControl.selectedSegmentIndex = 0
    }

    //Actions -> Func

    func displayUIFromCode() {
        let label = UILabel(frame: CGRect(x: 40, y: 100, width: 150, height: 20))
        label.text = "From code"
        label.font = UIFont.boldSystemFont(ofSize: 20)

        view.addSubview(label)
    }

    @IBAction func save(_ sender: UIButton) {

        guard let title = titleTextField.text else { return }
        guard let nbPage = numberOfPagesTextField.text, let nbPageInt = UInt(nbPage) else { return }

        let isInSerie = isInSerieSwitch.isOn

        let serie: Comic.Serie
        if isInSerie {
            guard let seriesName = seriesNameTextField.text else { return }
            guard let seriesNumberString = seriesNumberTextFIeld.text, let seriesNumber = Int(seriesNumberString) else { return }
            serie = .serie(name: seriesName, number: seriesNumber)
        } else {
            serie = .standalone
        }

        let newComic = Comic(title: title, nbPage: nbPageInt, author: "Ludovic", illustrator: "Ludovic", colorist: nil, serie: serie, style: .comic, language: "", editor: "", isbn: "", summary: "", coverImage: nil, publicationDate: Date(), edition: "", isRead: false, price: 0, note: nil)
        library.add(comic: newComic)

        dismiss(animated: true, completion: nil)
    }
}

