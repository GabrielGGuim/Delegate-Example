//
//  UIClassViewController.swift
//  Delegate-Example
//
//  Created by Gabriel Gonçalves Guimarães on 28/02/21.
//

import Foundation
import UIKit

class UIClassViewController: UIView{
    
    
    let lbQtdStudants: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "0"
        return lb
    }()
    
    let stepCount: UIStepper = {
        let sp = UIStepper()
        sp.autorepeat = true
        sp.maximumValue = 20
        sp.minimumValue = 0
        sp.translatesAutoresizingMaskIntoConstraints = false
        sp.addTarget(self, action: #selector(stepperCountDidChange), for: .valueChanged)
        
        return sp
    }()
    
    var btSend: UIButton = {
        let bt = UIButton()
        bt.backgroundColor = .gray
        bt.setTitle("Send", for: .normal)
        bt.addTarget(self, action: #selector(sendValue), for: .touchUpInside)

        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    var sendBoard: (() -> ()) = {}
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemBackground
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func sendValue(_ count: UIButton){
        
        sendBoard()
    }
    
    @objc func stepperCountDidChange(_ stepper: UIStepper){
        self.lbQtdStudants.text = String(Int(stepper.value))
    }
    
   
    
    func setup(){
        
        self.addSubview(lbQtdStudants)
        self.addSubview(stepCount)
        self.addSubview(btSend)

        NSLayoutConstraint.activate([
            
            lbQtdStudants.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 60),
            lbQtdStudants.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor),
            
            stepCount.topAnchor.constraint(equalTo: self.lbQtdStudants.bottomAnchor, constant: 30),
            stepCount.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor),
            
            btSend.centerYAnchor.constraint(equalTo: self.layoutMarginsGuide.centerYAnchor),
            btSend.centerXAnchor.constraint(equalTo: self.layoutMarginsGuide.centerXAnchor),
            btSend.widthAnchor.constraint(equalToConstant: 80),
            btSend.heightAnchor.constraint(equalToConstant: 50)
 
        ])
    }
}
