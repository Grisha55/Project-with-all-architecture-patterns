//
//  InteractorOutput.swift
//  All patterns together
//
//  Created by Григорий Виняр on 23/06/2022.
//

import Foundation

protocol InteractorOutput: AnyObject {
    
    func didFinishObtaingFormattedString(_ string: String)
}
