//
//  CustomTextField.swift
//  GetItDone
//
//  Created by khalil.panahi on 06/11/21.
//

import UIKit

class CustomTextField: UITextField {
    
    init(placeHolder: String = "Place Holder", frame: CGRect = .zero, cornerRadius: CGFloat = 5.0) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = cornerRadius
        self.attributedPlaceholder = NSAttributedString(
            string: placeHolder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
