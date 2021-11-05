//
//  CustomHeader.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class CustomHeader: UIView {
    let background = BackgroundGradient()
    
    lazy var titleLable: UILabel = {
        let view = CustomLabel(size: 18)
        return view
    }()
    
    lazy var subTitleLable: UILabel = {
        let view = CustomLabel(size: 24)
        return view
    }()
    
    init(title: String = "header title", subTitle:String = "subTitle String", frame: CGRect = .zero) {
        super.init(frame: frame)
        
        self.titleLable.text = title
        self.subTitleLable.text = subTitle
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomHeader: CodeView {
    func buildView() {
        addSubview(background)
        addSubview(titleLable)
        addSubview(subTitleLable)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(background.leadingAnchor.constraint(equalTo: leadingAnchor))
        constraints.append(background.topAnchor.constraint(equalTo: topAnchor))
        constraints.append(background.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(background.trailingAnchor.constraint(equalTo: trailingAnchor))
        
        constraints.append(titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50))
        constraints.append(titleLable.trailingAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(titleLable.centerYAnchor.constraint(equalTo: centerYAnchor))
        
        constraints.append(subTitleLable.leadingAnchor.constraint(equalTo: titleLable.leadingAnchor))
        constraints.append(subTitleLable.trailingAnchor.constraint(equalTo: titleLable.trailingAnchor))
        constraints.append(subTitleLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor,constant: 5))
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
