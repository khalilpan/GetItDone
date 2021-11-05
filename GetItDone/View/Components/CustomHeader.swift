//
//  CustomHeader.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class CustomHeader: UIView {
    let background = BackgroundGradient()
    
    init(title: String = "header title", subTitle:String = "subTitle String", frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomHeader: CodeView {
    func buildView() {
        addSubview(background)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(background.leftAnchor.constraint(equalTo: leftAnchor))
        constraints.append(background.topAnchor.constraint(equalTo: topAnchor))
        constraints.append(background.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(background.rightAnchor.constraint(equalTo: rightAnchor))
        
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
