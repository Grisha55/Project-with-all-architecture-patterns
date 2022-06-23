//
//  VIPERViewController.swift
//  All patterns together
//
//  Created by Григорий Виняр on 23/06/2022.
//

import UIKit

class VIPERViewController: UIViewController, VIPERViewInput {

    var output: VIPERViewOutput!

    private let label: UILabel = {
        let label = UILabel()
        label.text = "Example"
        label.textColor = .black
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Tap me!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        view.addSubview(label)
        view.addSubview(button)
        
        setContraintsForLabel()
        setContraintsForButton()
    }
    
    // MARK: - Methods
    
    func showFormattedString(_ string: String) {
        self.label.text = string
    }
    
    @objc
    func buttonAction() {
        output.didPressedAction()
    }
    
    func setContraintsForLabel() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    func setContraintsForButton() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    

}
