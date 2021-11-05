//
//  ListScreen.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class ListScreen: UIView {
    
    lazy var headerView: UIView = {
        let view = CustomHeader(title: "Stuff to get done.", subTitle: "0 Left")
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ListScreen: CodeView {
    func buildView() {
        addSubview(headerView)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(headerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor))
        constraints.append(headerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor))
        constraints.append(headerView.topAnchor.constraint(equalTo: topAnchor))
        constraints.append(headerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
