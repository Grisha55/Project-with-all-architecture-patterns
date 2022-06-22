//
//  MVPPresenter.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import Foundation

protocol MVPViewOutput: AnyObject {
    func didPressedButton()
}

class MVPPresenter: MVPViewOutput {
    
    weak var view: MVPViewInput!
    var manager: DataManagerProtocol!
    
    func didPressedButton() {
        let numbers = manager.obtainNumbers()
        view.showNumbers(numbers)
    }
    
}
