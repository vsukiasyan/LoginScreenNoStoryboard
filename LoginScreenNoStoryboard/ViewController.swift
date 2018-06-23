//
//  ViewController.swift
//  LoginScreenNoStoryboard
//
//  Created by Vic Sukiasyan on 6/22/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var loginView: LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        view.backgroundColor = .white
        setupViews()
        
    }
    
    func setupViews() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }

    


}

