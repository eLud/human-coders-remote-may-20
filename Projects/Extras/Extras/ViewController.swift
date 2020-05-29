//
//  ViewController.swift
//  Extras
//
//  Created by Ludovic Ollagnier on 29/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagevIew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func request(_ sender: Any) {

        let session = URLSession.shared

         let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/9/9a/2018_Suzuki_Swift_SZ5_Boosterjet_SHVS_1.0_Front.jpg")!

         let task = session.dataTask(with: url) { (data, response, error) in

             guard let data = data else { return }
             let image = UIImage(data: data)

            DispatchQueue.main.async {
                self.imagevIew.image = image
            }

         }

         task.resume()

    }
    
}

