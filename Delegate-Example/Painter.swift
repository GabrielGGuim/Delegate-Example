//
//  Painter.swift
//  Delegate-Example
//
//  Created by Gabriel Gonçalves Guimarães on 27/02/21.
//

import Foundation
import UIKit

protocol Paintable: class{
    
    func paintColor(color: UIColor)
}
struct Teacher {
    
    var name: String
    var year: Int
    
    var delegate: Paintable?
    
    
    func color(){
        print("entrou??")
        delegate?.paintColor(color: .cyan)
    }

    

}
