//
//  ViewController.swift
//  Bookie
//
//  Created by Phi Nguyen on 13/05/2024.
//

import UIKit

class ViewController: UIViewController{
    
    let appLogoImage = UIImageView(image: UIImage(named: "AppLogo"))
    let appNameLabel = BookieTitleLabel(textAlignment: .left, fontSize: 18)
    let signInLabel = BookieTitleLabel(textAlignment: .left, fontSize: 16)
    let emailTextField = BookieTextField(placeholder: "Enter your email")
    let passwordTextField = BookieTextField(placeholder: "Enter your password")
    let submitButton = BookieButton(color: .black, title: "Submit")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = BookieColors.backgroundColor
        
        view.addSubview(appLogoImage)
        view.addSubview(appNameLabel)
        view.addSubview(signInLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(submitButton)
        
        configureAppLogoImage()
        configureAppNameLabel()
        configureSignInLabelTextField()
        configureEmailTextField()
        configurePasswordTextField()
        configureSubmitButton()
    }
    
    func configureAppLogoImage() {
        appLogoImage.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            appLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
            appLogoImage.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: 42),
            appLogoImage.heightAnchor.constraint(equalToConstant: 40),
            appLogoImage.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    
    func configureAppNameLabel() {
        appNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        appNameLabel.text = "Bookie"
        
        NSLayoutConstraint.activate([
            appNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 178),
            appNameLabel.leadingAnchor.constraint(equalTo: appLogoImage.trailingAnchor, constant: 4),
            appNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            appNameLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    func configureSignInLabelTextField() {
        signInLabel.text = "Sign in"
        
        NSLayoutConstraint.activate([
            signInLabel.topAnchor.constraint(equalTo: appLogoImage.bottomAnchor, constant: 80),
            signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            signInLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            signInLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func configureEmailTextField() {
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 24),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func configurePasswordTextField() {
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func configureSubmitButton() {
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24),
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            submitButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}

