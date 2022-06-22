//
//  ViewController.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import UIKit

protocol MVPViewInput: AnyObject {
    func showNumbers(_ numbers: [Int])
}

class MVPViewController: UIViewController, MVPViewInput {

    var output: MVPViewOutput!
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Example"
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Change label", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(MVPViewController.self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.addSubview(label)
        view.addSubview(button)
        
        setConstraintsForLabel()
        setConstraintsForButton()
    }

    // MARK: - Methods
    
    @objc
    func buttonAction() {
        output.didPressedButton()
    }
    
    func showNumbers(_ numbers: [Int]) {
        var str: String = ""
        for num in numbers {
            str += String(num)
        }
        self.label.text = str
    }
    
    private func setConstraintsForLabel() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    private func setConstraintsForButton() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

}

