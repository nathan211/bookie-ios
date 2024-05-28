//
//  AccountViewController.swift
//  Bookie
//
//  Created by Phi Nguyen on 28/05/2024.
//

import UIKit

class AccountViewController: UIViewController {
    
    let customBackgroundView = BookieBackgroundView()
    let profileImageView = UIImageView()
    let nameLabel = UILabel()
    let signOutButton = UIButton()
    let managementSectionView = ManagementSectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = BookieColors.primary
        
        setupCustomBackgroundView()
        setupProfileSection()
        setupSignOutButton()
        setupManagementSectionView()
    }
    
    private func setupCustomBackgroundView() {
        customBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customBackgroundView)
        
        NSLayoutConstraint.activate([
            customBackgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            customBackgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customBackgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customBackgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func setupProfileSection() {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = 35
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .lightGray // Placeholder
        
        nameLabel.text = "Viet Phi Nguyen"
        nameLabel.textColor = .white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        nameLabel.textAlignment = .center
        
        customBackgroundView.addSubview(profileImageView)
        customBackgroundView.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: customBackgroundView.safeAreaLayoutGuide.topAnchor, constant: 10),
            profileImageView.centerXAnchor.constraint(equalTo: customBackgroundView.centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: customBackgroundView.centerXAnchor)
        ])
    }
    
    private func setupSignOutButton() {
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        signOutButton.setTitle("Sign out", for: .normal)
        signOutButton.setTitleColor(.white, for: .normal)
        signOutButton.backgroundColor = .systemRed
        signOutButton.layer.cornerRadius = 10
        
        customBackgroundView.addSubview(signOutButton)
        
        NSLayoutConstraint.activate([
            signOutButton.bottomAnchor.constraint(equalTo: customBackgroundView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            signOutButton.leadingAnchor.constraint(equalTo: customBackgroundView.leadingAnchor, constant: 20),
            signOutButton.trailingAnchor.constraint(equalTo: customBackgroundView.trailingAnchor, constant: -20),
            signOutButton.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func setupManagementSectionView() {
            managementSectionView.translatesAutoresizingMaskIntoConstraints = false
            customBackgroundView.addSubview(managementSectionView)
            
            NSLayoutConstraint.activate([
                managementSectionView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
                managementSectionView.leadingAnchor.constraint(equalTo: customBackgroundView.leadingAnchor, constant: 20),
                managementSectionView.trailingAnchor.constraint(equalTo: customBackgroundView.trailingAnchor, constant: -20)
            ])
        }
}
