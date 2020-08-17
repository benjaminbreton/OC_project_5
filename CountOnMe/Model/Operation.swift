//
//  Operation.swift
//  CountOnMe
//
//  Created by Benjamin Breton on 15/08/2020.
//  Copyright © 2020 Vincent Saluzzo. All rights reserved.
//

import Foundation
enum Operation {
    case addition, substraction, division, multiplication
    
    static func determination(_ operatorText: String) -> Operation? {
        switch operatorText {
        case "+":
            return .addition
        case "-":
            return .substraction
        case "×":
            return .multiplication
        case "÷":
            return .division
        default:
            return nil
        }
    }
    
    func resolve(_ left: Double, _ right: Double) -> Double? {
        switch self {
        case .addition:
            return left + right
        case .substraction:
            return left - right
        case .multiplication:
            return left * right
        case .division:
            if right != 0 {
                return left / right
            } else {
                return nil
            }
        }
    }
    
}