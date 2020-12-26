//
//  ViewController.swift
//  CustomView
//
//  Created by Sultan Isakov on 12/26/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calculatorView = CalculatorView()
        
        view.addSubview(calculatorView)
        let calculViewConstraints = [
            calculatorView.topAnchor.constraint(equalTo: view.topAnchor),
            calculatorView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            calculatorView.leftAnchor.constraint(equalTo: view.leftAnchor),
            calculatorView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ]
        NSLayoutConstraint.activate(calculViewConstraints)
    }


}

