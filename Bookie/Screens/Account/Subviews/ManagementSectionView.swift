//
//  ManagementSectionView.swift
//  Bookie
//
//  Created by Phi Nguyen on 28/05/2024.
//

import UIKit

class ManagementSectionView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Management"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let yourBusinessLabel: UILabel = {
        let label = UILabel()
        label.text = "Your business"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bookieHistoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Bookie history"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let yourBusinessIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "business-icon"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let bookieHistoryIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bookie-history-icon"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let yourBusinessArrow: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "chevron.right"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .gray
        return imageView
    }()
    
    private let bookieHistoryArrow: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "chevron.right"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .gray
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(titleLabel)
        addSubview(containerView)
        
        containerView.addSubview(yourBusinessIcon)
        containerView.addSubview(yourBusinessLabel)
        containerView.addSubview(yourBusinessArrow)
        containerView.addSubview(bookieHistoryIcon)
        containerView.addSubview(bookieHistoryLabel)
        containerView.addSubview(bookieHistoryArrow)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            containerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            containerView.heightAnchor.constraint(equalToConstant: 100),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            yourBusinessIcon.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            yourBusinessIcon.centerYAnchor.constraint(equalTo: containerView.topAnchor, constant: 25),
            yourBusinessIcon.widthAnchor.constraint(equalToConstant: 24),
            yourBusinessIcon.heightAnchor.constraint(equalToConstant: 24),
            
            yourBusinessLabel.leadingAnchor.constraint(equalTo: yourBusinessIcon.trailingAnchor, constant: 16),
            yourBusinessLabel.centerYAnchor.constraint(equalTo: yourBusinessIcon.centerYAnchor),
            
            yourBusinessArrow.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            yourBusinessArrow.centerYAnchor.constraint(equalTo: yourBusinessIcon.centerYAnchor),
            
            bookieHistoryIcon.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            bookieHistoryIcon.centerYAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -25),
            bookieHistoryIcon.widthAnchor.constraint(equalToConstant: 24),
            bookieHistoryIcon.heightAnchor.constraint(equalToConstant: 24),
            
            bookieHistoryLabel.leadingAnchor.constraint(equalTo: bookieHistoryIcon.trailingAnchor, constant: 16),
            bookieHistoryLabel.centerYAnchor.constraint(equalTo: bookieHistoryIcon.centerYAnchor),
            
            bookieHistoryArrow.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            bookieHistoryArrow.centerYAnchor.constraint(equalTo: bookieHistoryIcon.centerYAnchor)
        ])
    }
}
