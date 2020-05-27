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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print("Vue chargée")

        let label = UILabel(frame: CGRect(x: 40, y: 100, width: 150, height: 20))
        label.text = "From code"
        label.font = UIFont.boldSystemFont(ofSize: 20)

//        view.addSubview(label)
    }

    //Actions -> Func

}

