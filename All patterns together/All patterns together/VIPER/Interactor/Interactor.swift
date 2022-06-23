//
//  Interactor.swift
//  All patterns together
//
//  Created by Григорий Виняр on 23/06/2022.
//

import Foundation

class Interactor: InteractorInput {
    
    weak var output: InteractorOutput!
    
    var dataManager: DataManager!
    
    func obtainFromattedString() {
        let numbers = dataManager.obtainNumbers()
        
        let numberString = numbers.map({ "\($0)" }).joined(separator: ",")
        
        output.didFinishObtaingFormattedString(numberString)
    }
    
}
