//
//  ListScreen.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import UIKit

class ListScreen: UIView {
    var addItemAction: (() -> Void)?
    var cancelButtonAction: (() -> Void)?
    var saveButtonAction: (() -> Void)?
    
    let newItemPopup = NewItemPopup()
    
    
    lazy var headerView: UIView = {
        let view = CustomHeader(title: "Stuff to get done.", subTitle: "0 Left")
        view.delegate = self
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        newItemPopup.delegate = self
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - CodeView

extension ListScreen: CodeView {
    func buildView() {
        addSubview(headerView)
        addSubview(newItemPopup)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(headerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor))
        constraints.append(headerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor))
        constraints.append(headerView.topAnchor.constraint(equalTo: topAnchor))
        constraints.append(headerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15))
        
        constraints.append(newItemPopup.bottomAnchor.constraint(equalTo: bottomAnchor))
        constraints.append(newItemPopup.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9))
        constraints.append(newItemPopup.centerXAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(newItemPopup.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.14))
        
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupAddicionalConfiguration() {
        
    }
}

//MARK: - CustomHeaderProtocol

extension ListScreen: CustomHeaderProtocol {
    func addItem() {
        addItemAction?()
    }  
}

//MARK: - NewItemProtocol

extension ListScreen: NewItemProtocol {
    func addPressed() {
        saveButtonAction?()
    }
    
    func cancelPressed() {
        cancelButtonAction?()
    }
}
