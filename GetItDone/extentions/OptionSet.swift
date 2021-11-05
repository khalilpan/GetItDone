//
//  OptionSet.swift
//  GetItDone
//
//  Created by khalil.panahi on 05/11/21.
//

import Foundation

//to create a set of options for our custom buttons in the app
struct ButtonOptions: OptionSet {
    let rawValue: Int

    static let roundedText    = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon  = ButtonOptions(rawValue: 1 << 1)

}
