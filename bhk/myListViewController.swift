//
//  myListViewController.swift
//  bhk
//
//  Created by Developer on 3/2/17.
//  Copyright © 2017 Sawan Kumar. All rights reserved.
//

import UIKit

class myListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationItem.title = "My List"
        
    }

}
