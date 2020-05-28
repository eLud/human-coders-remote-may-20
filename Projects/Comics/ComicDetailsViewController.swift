//
//  ComicDetailsViewController.swift
//  Comics
//
//  Created by Ludovic Ollagnier on 28/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import UIKit

class ComicDetailsViewController: UIViewController {

    var comic: Comic?

    @IBOutlet weak var comicName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }

    private func configureUI() {

        if let comic = comic {
            comicName.text = comic.title
        } else {
            comicName.text = "No comic"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
