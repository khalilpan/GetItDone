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
    
    lazy var descriptionLabel: UILabel = {
        let view = CustomLabel(title: "Welcome, \nGET IT DONE is a TO DO list app.", size: 20, textAlignment: .center)
        view.numberOfLines = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var copyrightLabel: UILabel = {
        let view = CustomLabel(title: "© Copyright | KhalilPan", color: .black, size: 10, textAlignment: .center)
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
        view.addSubview(descriptionLabel)
        view.addSubview(copyrightLabel)
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(backGround.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(backGround.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(backGround.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(backGround.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))
        
        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(titleLabel.topAnchor.constraint(equalTo: backGround.topAnchor,constant: 20))

        constraints.append(descriptionLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(descriptionLabel.centerYAnchor.constraint(equalTo: backGround.centerYAnchor))
        
        constraints.append(copyrightLabel.topAnchor.constraint(equalTo: backGround.bottomAnchor,constant: 5))
        constraints.append(copyrightLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}

