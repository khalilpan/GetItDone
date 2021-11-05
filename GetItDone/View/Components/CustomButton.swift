//
//  CustomButton.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class CustomButton: UIButton {
//    let buttonColor = UIColor.init(red: CGFloat(66)/255.0, green: CGFloat(1)/255.0, blue: CGFloat(66)/255.0, alpha: 100)
    
    init(title: String = "Button Title", frame: CGRect = .zero) {
        super.init(frame: frame)
        
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 25
        self.backgroundColor = .white
        self.setTitleColor(.gray, for: .normal)
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-Regular", size: 16)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
