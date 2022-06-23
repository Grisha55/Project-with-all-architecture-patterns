//
//  VIPERPresenter.swift
//  All patterns together
//
//  Created by Григорий Виняр on 23/06/2022.
//

import Foundation

class Presenter: VIPERViewOutput, InteractorOutput {
    
    weak var view: VIPERViewInput!
    var interactor: InteractorInput!
    var router: RouterInput!
    
    // MARK: - ViewOutput
    
    func didPressedAction() {
        interactor.obtainFromattedString()
    }
    
    // MARK: - Interactor Output
    
    func didFinishObtaingFormattedString(_ string: String) {
        view.showFormattedString(string)
        router.showOkAlert()
    }
    
}
