//
//  MainViewController.swift
//  bhk
//
//  Created by Developer on 3/2/17.
//  Copyright © 2017 Sawan Kumar. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController , UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        view.backgroundColor = UIColor.white
        
        let home = HomeViewController()
        home.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home"), tag: 0)
        
        let locality = LocalityViewController()
        locality.tabBarItem = UITabBarItem(title: "Locality", image: #imageLiteral(resourceName: "locality"), tag: 1)
        
        let housing = HousingViewController()
        housing.tabBarItem = UITabBarItem(title: "Housing", image: #imageLiteral(resourceName: "housing"), tag: 2)
        
        let mylist = myListViewController()
        mylist.tabBarItem = UITabBarItem(title: "My List", image: #imageLiteral(resourceName: "mylist"), tag: 3)
        
        let more = moreViewController()
        more.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 4)
        
        
        let viewControllerList = [ home, locality, housing , mylist, more]
       viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }
    
  
}
