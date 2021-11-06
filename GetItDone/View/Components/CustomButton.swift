//
//  CustomButton.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class CustomButton: UIButton {
//    let buttonColor = UIColor.init(red: CGFloat(66)/255.0, green: CGFloat(1)/255.0, blue: CGFloat(66)/255.0, alpha: 100)

    var radius: CGFloat?
    
    init(title: String = "Button Title", frame: CGRect = .zero, type: ButtonOptions = .roundedText, cornerRadius: CGFloat = 20) {
        super.init(frame: frame)

        self.radius = cornerRadius
        setTitle(title, for: .normal)
        backgroundColor = .white
        setTitleColor(.gray, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false

        switch type {
        case .roundedText:
            layer.cornerRadius = self.radius!
            if let titleLabel = self.titleLabel {
                titleLabel.font = UIFont(name: "Raleway-Regular", size: 16)
            }
            break;
        case .squareIcon:
            layer.cornerRadius = self.radius!
            break
        default:
            break
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        layer.cornerRadius = radius!
    }
}
