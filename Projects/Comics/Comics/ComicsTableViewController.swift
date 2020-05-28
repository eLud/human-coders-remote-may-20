//
//  ComicsTableViewController.swift
//  Comics
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import UIKit

let library = Library()

class ComicsTableViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        print("TableViewCOntroller loaded")

        tableView.dataSource = self

        let comic = Comic(title: "Asterix", nbPage: 0, author: "frgr", illustrator: "", colorist: nil, serie: .standalone, style: .comic, language: "FR", editor: "", isbn: nil, summary: "", coverImage: nil, publicationDate: Date(), edition: "", isRead: true, price: 0.0, note: nil)
        library.add(comic: comic)

        let notCenter = NotificationCenter.default
        notCenter.addObserver(forName: Notification.Name("addedComic"), object: library, queue: OperationQueue.main) { (notif) in
            self.tableView.reloadData()
        }

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        switch section {
        case 0:
            return library.allComics.count
        default:
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "subtitleCell", for: indexPath)

        let currentComic = library.allComics[indexPath.row]

        cell.textLabel?.text = currentComic.title
        cell.detailTextLabel?.text = currentComic.author

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showDetails" {
            let destination = segue.destination as? ComicDetailsViewController

            guard let cell = sender as? UITableViewCell else { return }
            guard let indexPath = tableView.indexPath(for: cell) else { return }

            destination?.comic = library.allComics[indexPath.row]
        }
    }

}

extension ComicsTableViewController: UITableViewDataSourcePrefetching {

    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {

    }

}

extension ComicsTableViewController {

//    var value: Int = 0 // Pas de stored properties
}
