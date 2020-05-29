//
//  ViewController.swift
//  Demo Core Data
//
//  Created by Ludovic Ollagnier on 29/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        textView.text = ""

        let context = appDelegate.persistentContainer.viewContext

        let fetchRequest: NSFetchRequest<Comic> = Comic.fetchRequest()
        if let results = try? context.fetch(fetchRequest) {
            let titles = results.map( {$0.title!} )
            textView.text = titles.joined(separator: "\n")
        }
    }

    @IBAction func save(_ sender: Any) {

        let context = appDelegate.persistentContainer.viewContext

        let author = Person(context: context)
        author.firstName = "Uderzo"
        author.lastName = "Goscinny"

        let comic = Comic(context: context)
        comic.author = author
        comic.title = textField.text

        appDelegate.saveContext()
    }
    
}

