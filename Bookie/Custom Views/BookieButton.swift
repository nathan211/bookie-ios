//
//  BookieButton.swift
//  Bookie
//
//  Created by Phi Nguyen on 13/05/2024.
//

import UIKit

class BookieButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(color: UIColor, title: String) {
        self.init(frame: .zero)
        set(color: color, title: title)
    }
    
    
    private func configure() {
        configuration = .gray()
        configuration?.cornerStyle = .medium
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 4
        layer.masksToBounds = true
    }
    
    
    final func set(color: UIColor, title: String) {
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = .white
        configuration?.title = title
        configuration?.imagePadding = 6
        configuration?.imagePlacement = .leading
        
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 14)
        configuration?.attributedTitle = AttributedString(title, attributes: attributes)
    }
}
