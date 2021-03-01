//
//  BoardViewController.swift
//  Delegate-Example
//
//  Created by Gabriel Gonçalves Guimarães on 28/02/21.
//

import UIKit

protocol Countable: NSObject {
    func qtdMissing(boardViewController: BoardViewController)
}

class BoardViewController: UIViewController {

    weak var deletegate: Countable?
    
    let uiLayout = UIBoardViewController()
    
    override func loadView() {
        self.view = uiLayout
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        qtdStudants()
    }
    
    func qtdStudants(){
        deletegate?.qtdMissing(boardViewController: self)
    }

}
