//
//  CalculatorView.swift
//  CustomView
//
//  Created by Sultan Isakov on 12/26/20.
//

import UIKit

class CalculatorView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        let calculGridStackView = UIStackView()
        calculGridStackView.axis = .vertical
        calculGridStackView.distribution = .fillEqually
        calculGridStackView.spacing = 1
        calculGridStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let calculTextF = UITextField()
        calculTextF.backgroundColor = .black
        calculTextF.text = "0"
        calculTextF.textAlignment = .right
        calculTextF.textColor = .white
        calculTextF.font = UIFont(name: "Helvetica-Light", size: 64)
        calculTextF.contentVerticalAlignment = .bottom
        
        calculGridStackView.addArrangedSubview(calculTextF)
        
        let buttons = [["AC", "+/-", "%", "/"], ["1", "2", "3", "+"], ["4", "5", "6", "-"], ["7", "8", "9", "x"], ["0"," ", ".","="]]
        
        for buttonsArray in buttons {
            let row = UIStackView()
            row.axis = .horizontal
            row.distribution = .fillEqually
            row.spacing = 1
            
            for buttonsValue in buttonsArray {
                let button = UIButton()
                
                button.setTitle(buttonsValue, for: .normal)
                button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 25)
                
                if buttonsValue == buttonsArray.last {
                    button.backgroundColor = .orange
                } else {
                    if buttons.last == buttonsArray{
                        button.backgroundColor = .black
                    } else {
                        button.backgroundColor = .darkGray
                    }
                }
                row.addArrangedSubview(button)
            }
            
            
            calculGridStackView.addArrangedSubview(row)
        }
        
        addSubview(calculGridStackView)
        setupLayout(calculGridStackView: calculGridStackView)
        
        setNeedsUpdateConstraints()
    }
    
    
    private func setupLayout(calculGridStackView: UIStackView) {
        let calculGridStackViewConstraints = [
            calculGridStackView.topAnchor.constraint(equalTo: topAnchor),
            calculGridStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            calculGridStackView.leftAnchor.constraint(equalTo: leftAnchor),
            calculGridStackView.rightAnchor.constraint(equalTo: rightAnchor)
        ]
        NSLayoutConstraint.activate(calculGridStackViewConstraints)
    }
}
