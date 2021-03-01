//
//  ViewController.swift
//  Delegate-Example
//
//  Created by Gabriel Gonçalves Guimarães on 27/02/21.
//

import UIKit

class ClassViewController: UIViewController{
    
    let uiLayout = UIClassViewController()
    
    override func loadView() {
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always
        title  = "Missing Students"
        self.view = uiLayout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callBackValueBtn()
    }
    
    func callBackValueBtn(){
        uiLayout.sendBoard = {
            let vc = BoardViewController()
            vc.deletegate = self
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    
    
}

extension ClassViewController: Countable{
    func qtdMissing(boardViewController: BoardViewController) {
        boardViewController.uiLayout.lbQtdStudants.text = uiLayout.lbQtdStudants.text
    }
    
}

