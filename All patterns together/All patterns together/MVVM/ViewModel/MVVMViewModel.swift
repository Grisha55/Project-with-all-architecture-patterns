//
//  MVVMViewModel.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import Foundation

protocol MVVMViewModelProtocol {
    
    var text: String { get set }
    
    var textDidChangedHandler: ((String) -> Void)? { get set }
    
    func obtainNumbers()
}

class MVVMViewModel: MVVMViewModelProtocol {
    
    var dataManager: DataManager!
    
    var text: String = "" {
        didSet {
            textDidChangedHandler?(text)
        }
    }
    
    var textDidChangedHandler: ((String) -> Void)?
    
    func obtainNumbers() {
        let numbers = dataManager.obtainNumbers()
        text = numbers.map({ "\($0)" }).joined(separator: ",")
    }
    
    
    
}
