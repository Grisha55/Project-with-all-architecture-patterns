//
//  File.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import Foundation
import UIKit

class MVPAssembly {
    
    static func mvpBuilder() -> UIViewController {
        let view = MVPViewController()
        let presenter = MVPPresenter()
        let dataManager = DataManager()
        view.output = presenter
        
        presenter.view = view
        presenter.manager = dataManager
        
        return view
    }
    
}
