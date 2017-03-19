//
//  moreViewController.swift
//  bhk
//
//  Created by Developer on 3/3/17.
//  Copyright © 2017 Sawan Kumar. All rights reserved.
//

import UIKit

class moreViewController: UIViewController {
    
    
    lazy var quickTour: UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("Quick Tour", for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.lightGray.cgColor
        btn.addTarget(self, action: #selector(handleQuicktour), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.textAlignment = .left
        btn.setTitleColor(UIColor.black, for: .normal)
        
        return btn
    }()
    let quickTourImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "quick")
        img.contentMode = .scaleAspectFit
       return img
    }()
    
    func setupquickTour(){
        quickTour.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        quickTour.topAnchor.constraint(equalTo: view.topAnchor,constant: 96).isActive = true
        quickTour.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        quickTour.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    func setupquickTourImage(){
        quickTourImage.leftAnchor.constraint(equalTo: quickTour.leftAnchor,constant: 10).isActive = true
        quickTourImage.centerYAnchor.constraint(equalTo: quickTour.centerYAnchor).isActive = true
        quickTourImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        quickTourImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
     var shareTheApp: UIButton = UIButton()
     var SendFeedback: UIButton = UIButton()
     var rateUs: UIButton = UIButton()
     var info: UIButton = UIButton()
     var helpDesk: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        loadButton()
    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationItem.title = "More"
        
    }
  

    
    func loadButton(){
        
        view.addSubview(quickTour)
        setupquickTour()
        quickTour.addSubview(quickTourImage)
        setupquickTourImage()
      
    }
    
    func handleQuicktour(){
        print(123)
    }
}
