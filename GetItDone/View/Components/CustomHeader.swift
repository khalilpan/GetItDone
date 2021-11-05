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
        let view = CustomLabel(size: 14)
        return view
    }()
    
    lazy var subTitleLable: UILabel = {
        let view = CustomLabel(size: 24)
        return view
    }()
    
    lazy var addbutton : UIButton = {
        let view = CustomButton(title: "+", type: .squareIcon)
        return view
    }()
    
    init(title: String = "default title.", subTitle:String = "default subTitle.", frame: CGRect = .zero) {
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
        addSubview(addbutton)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(background.leadingAnchor.constraint(equalTo: leadingAnchor))
        constraints.append(background.topAnchor.constraint(equalTo: topAnchor))
        constraints.append(background.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(background.trailingAnchor.constraint(equalTo: trailingAnchor))
        
        constraints.append(titleLable.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10))
        constraints.append(titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50))
        constraints.append(titleLable.trailingAnchor.constraint(equalTo: centerXAnchor))
        
        constraints.append(subTitleLable.leadingAnchor.constraint(equalTo: titleLable.leadingAnchor))
        constraints.append(subTitleLable.trailingAnchor.constraint(equalTo: titleLable.trailingAnchor, constant: 50))
        constraints.append(subTitleLable.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5))
        
        constraints.append(addbutton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10))
        constraints.append(addbutton.bottomAnchor.constraint(equalTo: subTitleLable.bottomAnchor))
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
