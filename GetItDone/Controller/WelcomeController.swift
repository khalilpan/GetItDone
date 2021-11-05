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
        view.layer.cornerRadius = 24
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

    lazy var nextButton: UIButton = {
        let view = CustomButton(title: "START WINNING")
        view.addTarget(self, action: #selector(self.handleButtonPress), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupView()
    }

    @objc func handleButtonPress() {
        print("Next Button clicked.")

//        // to add animation when button pressed
//        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn) {
//            // will run when action starts(will decrease button size)
//            self.nextButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
//        } completion: { _ in
//            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn) {
//                // will run when action got complete(will change button size back)
//                self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
//            }
//        }
    }
}

extension WelcomeController: CodeView {
    func buildView() {
        view.addSubview(backGround)
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(copyrightLabel)
        view.addSubview(nextButton)
    }

    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()

        constraints.append(backGround.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(backGround.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(backGround.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(backGround.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20))

        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(titleLabel.topAnchor.constraint(equalTo: backGround.topAnchor, constant: 20))

        constraints.append(descriptionLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(descriptionLabel.centerYAnchor.constraint(equalTo: backGround.centerYAnchor))

        constraints.append(copyrightLabel.topAnchor.constraint(equalTo: backGround.bottomAnchor, constant: 5))
        constraints.append(copyrightLabel.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))

        constraints.append(nextButton.bottomAnchor.constraint(equalTo: backGround.bottomAnchor, constant: -20))
        constraints.append(nextButton.centerXAnchor.constraint(equalTo: backGround.centerXAnchor))
        constraints.append(nextButton.widthAnchor.constraint(equalTo: backGround.widthAnchor, multiplier: 0.6))
        constraints.append(nextButton.heightAnchor.constraint(equalToConstant: 50))

        NSLayoutConstraint.activate(constraints)
    }

    func setupAddicionalConfiguration() {
    }
}
