//
//  MVVMAssembly.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import UIKit

class MVVMAssembly {
    
    static func mvvmBuilder() -> UIViewController {
        let view = MVVMViewController()
        let viewModel = MVVMViewModel()
        let dataManager = DataManager()
        
        view.viewModel = viewModel
        viewModel.dataManager = dataManager
        
        return view
    }
}
