//
//  LoginView.swift
//  LoginScreenNoStoryboard
//
//  Created by Vic Sukiasyan on 6/22/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    func setup() {
        let stackView = mainStackView()
        
        addSubview(backgroundView)
        addSubview(stackView)
        
        backgroundView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        stackView.setAnchor(width: self.frame.width - 60, height: 210)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
    
    let backgroundView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "bg")
        iv.contentMode = .scaleAspectFill
        
        return iv
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.layer.cornerRadius = 5
        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.autocorrectionType = .no
        
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Email", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor(white: 1, alpha: 0.7)]))
        tf.attributedPlaceholder = placeholder
        tf.setAnchor(width: 0, height: 40)
        tf.setLeftPaddingPoints(20)
        
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.layer.cornerRadius = 5
        tf.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        tf.textColor = UIColor(white: 0.9, alpha: 0.8)
        tf.font = UIFont.systemFont(ofSize: 17)
        tf.autocorrectionType = .no
        
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor(white: 1, alpha: 0.7)]))
        tf.attributedPlaceholder = placeholder
        tf.setAnchor(width: 0, height: 40)
        tf.setLeftPaddingPoints(20)
        
        return tf
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        button.setAttributedTitle(attributedString, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 80/255, green: 227/255, blue: 194/255, alpha: 1).cgColor
        button.setAnchor(width: 0, height: 50)
        
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Sign Up", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        button.setAttributedTitle(attributedString, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 255/255, green: 151/255, blue: 164/255, alpha: 1).cgColor
        button.setAnchor(width: 0, height: 50)
        
        return button
    }()
    
    func mainStackView() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, signupButton])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        
        return stackView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
