//
//  LoginController.swift
//  bhk
//
//  Created by Developer on 3/2/17.
//  Copyright © 2017 Sawan Kumar. All rights reserved.
//

import UIKit

extension LoginViewController {
    
    func handleSkip(){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func handleforgotpassword(){
        
        print("forgot")
    }
    
    func handleRegister(){
        
        let new = registerViewController()
        self.navigationController?.pushViewController(new, animated: true)
    }
    func handleLogin(){
        
        let new = registerViewController()
        self.navigationController?.pushViewController(new, animated: true)
        
        
        
    }

}
