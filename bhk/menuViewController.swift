//
//  menuViewController.swift
//  bhk
//
//  Created by Developer on 3/3/17.
//  Copyright © 2017 Sawan Kumar. All rights reserved.
//

import UIKit

class menuViewController: UITableViewController {

    let menuOptions = ["Open Modal", "Open Push"]
    
    
}
extension menuViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            // ContainerVC.swift listens for this
            NotificationCenter.default.post(name: Notification.Name(rawValue: "openModalWindow"), object: nil)
        case 1:
            // Both FirstViewController and SecondViewController listen for this
            NotificationCenter.default.post(name: Notification.Name(rawValue: "openPushWindow"), object: nil)
        default:
            print("indexPath.row:: \(indexPath.row)")
        }
        
        // also close the menu
        NotificationCenter.default.post(name: Notification.Name(rawValue: "closeMenuViaNotification"), object: nil)
        
    }
    
}

extension menuViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuOptions[indexPath.row]
        return cell
    }
    
}
