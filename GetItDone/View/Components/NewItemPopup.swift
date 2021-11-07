//
//  NewItemPopup.swift
//  GetItDone
//
//  Created by khalil.panahi on 06/11/21.
//

import UIKit

class NewItemPopup: BackgroundGradient {
    
    var delegate: NewItemProtocol?
    
    lazy var cancelButton: UIButton = {
        let view = CustomButton(title: " Cancel ", type: .roundedText, cornerRadius: 8)
        view.addTarget(self, action: #selector(handleCancelButto), for: .touchUpInside)
        
        return view
    }()
    
    lazy var saveButton: UIButton = {
        let view = CustomButton(title: " Add ", type: .roundedText, cornerRadius: 8)
        view.addTarget(self, action: #selector(handleAddButton), for: .touchUpInside)
        return view
    }()
    
    lazy var newItemTextField: UITextField = {
        let view = CustomTextField(placeHolder: " insert new todo here ", cornerRadius: 8.0)
        view.backgroundColor = .white
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 20
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleCancelButto() {
        delegate?.cancelPressed()
    }
    
    @objc func handleAddButton() {
        delegate?.addPressed()
        
    }
}

extension NewItemPopup: CodeView {
    func buildView() {
        addSubview(cancelButton)
        addSubview(saveButton)
        addSubview(newItemTextField)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(cancelButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20))
        constraints.append(cancelButton.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        
        constraints.append(saveButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20))
        constraints.append(saveButton.topAnchor.constraint(equalTo: topAnchor, constant: 10))
        
        constraints.append(newItemTextField.centerXAnchor.constraint(equalTo: centerXAnchor))
        constraints.append(newItemTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15))
        constraints.append(newItemTextField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5))
//        constraints.append(newItemTextField.heightAnchor.constraint(equalToConstant: 30))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
