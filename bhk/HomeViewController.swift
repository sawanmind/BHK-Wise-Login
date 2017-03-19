//
//  HomeViewController.swift
//  bhk
//
//  Created by Developer on 3/2/17.
//  Copyright © 2017 Sawan Kumar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
         view.backgroundColor = UIColor.white
        let image = UIImage(named: "location")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(handlelocation))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(handlemenu))
        
       
    }
    
    
   

    
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationItem.title = "Home"
        
    }
    func handlelocation(){
        
        print(123)
    }
    
    func handleProfile(){
        
        let new = UINavigationController(rootViewController: LoginViewController())
        present(new, animated: true, completion: nil)
    }
    
    func handlemenu(){
        
        
    }
}
