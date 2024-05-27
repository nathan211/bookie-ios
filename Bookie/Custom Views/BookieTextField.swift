//
//  BookieTextField.swift
//  Bookie
//
//  Created by Phi Nguyen on 13/05/2024.
//

import UIKit

class BookieTextField: UITextField {
    
    var padding: UIEdgeInsets {
        let horizontalPadding: CGFloat = isEditing ? 40 : 16
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: horizontalPadding)
    }
    
    init(frame: CGRect = .zero, placeholder: String) {
        super.init(frame: frame)
        self.placeholder = placeholder
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius          = 4
        
        textColor                   = .label
        tintColor                   = .label
        textAlignment               = .left
        font                        = UIFont.preferredFont(forTextStyle: .body)
        
        backgroundColor             = .white
        autocorrectionType          = .no
        returnKeyType               = .go
        clearButtonMode             = .whileEditing
        
        addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func clearButtonRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.clearButtonRect(forBounds: bounds)
        rect.origin.x -= 8 // Adjust the left position of the clear button
        return rect
    }
    
    @objc private func textFieldEditingChanged() {
        layoutIfNeeded()
    }
    
    override func becomeFirstResponder() -> Bool {
        let result = super.becomeFirstResponder()
        if result {
            layoutIfNeeded()
        }
        return result
    }
    
    override func resignFirstResponder() -> Bool {
        let result = super.resignFirstResponder()
        if result {
            layoutIfNeeded()
        }
        return result
    }
}
