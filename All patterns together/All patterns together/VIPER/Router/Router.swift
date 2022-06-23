//
//  Router.swift
//  All patterns together
//
//  Created by Григорий Виняр on 23/06/2022.
//

import Foundation
import UIKit

class Router: RouterInput {
    
    weak var view: UIViewController!
    
    func showOkAlert() {
        let alert = UIAlertController(title: "Hi", message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .cancel)
        
        alert.addAction(okButton)
        
        view.present(alert, animated: true)
    }
    
}
