//
//  UIBoardViewController.swift
//  Delegate-Example
//
//  Created by Gabriel Gonçalves Guimarães on 28/02/21.
//

import UIKit

class UIBoardViewController: UIView {

    
    var lbQtdStudants: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "0"
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBackground

        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.addSubview(lbQtdStudants)

        NSLayoutConstraint.activate([
            lbQtdStudants.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor),
            lbQtdStudants.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor),

        ])

    }
    

}
