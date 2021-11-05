//
//  CustomLabel.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

class CustomLabel: UILabel {
    
    init(title: String = "Default text", color: UIColor = .white, size: CGFloat = 16 , frame: CGRect = .zero, textAlignment: NSTextAlignment = .left) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-Regular", size: size)
        self.textAlignment = textAlignment
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
