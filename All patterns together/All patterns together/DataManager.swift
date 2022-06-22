//
//  DataManager.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import Foundation

protocol DataManagerProtocol {
    func obtainNumbers() -> [Int]
}

class DataManager: DataManagerProtocol {
    
    func obtainNumbers() -> [Int] {
        return [1, 2, 3, 4, 5]
    }
}
