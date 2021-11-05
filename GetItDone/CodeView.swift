//
//  CodeView.swift
//  GetItDone
//
//  Created by khalil.panahi on 04/11/21.
//

import Foundation

protocol CodeView {
    func buildView()
    func setupConstraints()
    func setupAddicionalConfiguration()
    func setupView() // to create a template for calling the functions with order
}

// adding extention to "CodeView" protocol
extension CodeView {
    func setupView() {
        buildView()
        setupConstraints()
        setupAddicionalConfiguration()
    }
}
