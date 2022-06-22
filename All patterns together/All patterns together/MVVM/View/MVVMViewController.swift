//
//  MVVMViewController.swift
//  All patterns together
//
//  Created by Григорий Виняр on 22/06/2022.
//

import UIKit

class MVVMViewController: UIViewController {
    
    var text: String = String()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Example"
        return label
    }()
    
    private let buttonShow: UIButton = {
        let button = UIButton()
        button.setTitle("Change label", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(MVVMViewController.self, action: #selector(buttonDidPressed), for: .touchUpInside)
        return button
    }()
    
    var viewModel: MVVMViewModelProtocol? {
        didSet {
            viewModel?.textDidChangedHandler = { [weak self] text in
                self?.label.text = text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(label)
        view.addSubview(buttonShow)
        
        setConstraintsForLabel()
        setConstraintsForButton()
    }

    // MARK: - Methods
    
    @objc
    func buttonDidPressed() {
        viewModel?.obtainNumbers()
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
        buttonShow.translatesAutoresizingMaskIntoConstraints = false
        buttonShow.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        buttonShow.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
