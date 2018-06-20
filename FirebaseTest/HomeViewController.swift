//
//  HomeViewController.swift
//  FirebaseTest
//
//  Created by Pohle, Sven on 6/20/18.
//  Copyright © 2018 Pohle, Sven. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let uiInputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let uiEmailTextField: UITextField = {
       let view = UITextField()
        view.placeholder = "Email Adress"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let uiEmailSeperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let uiPasswordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        view.isSecureTextEntry = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var uiLoginButton: UIButton = {
       let view = UIButton()
        
        view.setTitle("Login", for: .normal)
        view.backgroundColor = UIColor(hexString: "#2C3E50")
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var uiRegisterButton: UIButton = {
        let view = UIButton()
        
        view.setTitle("Register", for: .normal)
        view.backgroundColor = UIColor(hexString: "#2C3E50")
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(uiInputsContainerView)
        view.addSubview(uiLoginButton)
        view.addSubview(uiRegisterButton)
        setupUserInterface()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupUserInterface() {
        view.backgroundColor = UIColor(hexString: "#2980B9")
        
        uiInputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        uiInputsContainerView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        uiInputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        uiInputsContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        uiInputsContainerView.addSubview(uiEmailTextField)
        uiInputsContainerView.addSubview(uiEmailSeperatorView)
        uiInputsContainerView.addSubview(uiPasswordTextField)
        
        uiEmailTextField.leftAnchor.constraint(equalTo: uiInputsContainerView.leftAnchor, constant: 12).isActive = true
        uiEmailTextField.rightAnchor.constraint(equalTo: uiInputsContainerView.rightAnchor, constant: 12).isActive = true
        uiEmailTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        uiEmailTextField.topAnchor.constraint(equalTo: uiInputsContainerView.topAnchor).isActive = true
        
        uiEmailSeperatorView.topAnchor.constraint(equalTo: uiEmailTextField.bottomAnchor, constant: 2).isActive = true
        uiEmailSeperatorView.rightAnchor.constraint(equalTo: uiInputsContainerView.rightAnchor, constant: -10).isActive = true
        uiEmailSeperatorView.leftAnchor.constraint(equalTo: uiInputsContainerView.leftAnchor, constant: 10).isActive = true
        uiEmailSeperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        uiPasswordTextField.topAnchor.constraint(equalTo: uiEmailSeperatorView.bottomAnchor, constant: 2).isActive = true
        uiPasswordTextField.leftAnchor.constraint(equalTo: uiEmailTextField.leftAnchor).isActive = true
        uiPasswordTextField.rightAnchor.constraint(equalTo: uiEmailTextField.rightAnchor).isActive = true
        uiPasswordTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        uiLoginButton.topAnchor.constraint(equalTo: uiInputsContainerView.bottomAnchor, constant: 20).isActive = true
        uiLoginButton.leftAnchor.constraint(equalTo: uiInputsContainerView.leftAnchor).isActive = true
        uiLoginButton.widthAnchor.constraint(equalTo: uiInputsContainerView.widthAnchor, multiplier: 0.49).isActive = true
        uiLoginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        uiRegisterButton.topAnchor.constraint(equalTo: uiInputsContainerView.bottomAnchor, constant: 20).isActive = true
        uiRegisterButton.rightAnchor.constraint(equalTo: uiInputsContainerView.rightAnchor).isActive = true
        uiRegisterButton.widthAnchor.constraint(equalTo: uiInputsContainerView.widthAnchor, multiplier: 0.49).isActive = true
        uiRegisterButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
