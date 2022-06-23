//
//  VIPERAssembly.swift
//  All patterns together
//
//  Created by Григорий Виняр on 23/06/2022.
//

import Foundation
import UIKit

class VIPERAssembly {
    
    static func VIPERBuilder() -> UIViewController {
        
        let view = VIPERViewController()
        let interactor = Interactor()
        let router = Router()
        let presenter = Presenter()
        let dataManager = DataManager()
        
        view.output = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.dataManager = dataManager
        interactor.output = presenter
        
        router.view = view
        
        return view
    }
    
}
