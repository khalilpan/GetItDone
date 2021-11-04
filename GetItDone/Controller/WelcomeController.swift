//
//  ViewController.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import UIKit

class WelcomeController: UIViewController {

    lazy var backGround: UIView = {
        let view = BackgroundGradient()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 6
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = CustomLabel(title: "GET IT DONE.", size: 24, textAlignment: .center)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupView()
    }
}

extension WelcomeController: CodeView {
    func buildView() {
        view.addSubview(backGround)
        view.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backGround.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(backGround.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(backGround.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(backGround.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        
        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(titleLabel.topAnchor.constraint(equalTo: backGround.topAnchor,constant: 20))
//        constraints.append(titleLabel.widthAnchor.constraint(equalToConstant: 200))
//        constraints.append(titleLabel.heightAnchor.constraint(equalToConstant: 200))
//        constraints.append(titleLabel.centerYAnchor.constraint(equalTo: backGround.centerYAnchor, constant: -100))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}

