//
//  Item.swift
//  TerminalFatal
//
//  Created by Caio Madeira on 11/08/20.
//  Copyright © 2020 Caio Madeira. All rights reserved.
//

import UIKit

class Item: NSObject {

    // MARK: - Atributos
    
    let nome: String
    let terminais: Int
    
    // MARK: - Init
    
    init(nome: String, terminais: Int) {
        self.nome = nome
        self.terminais = terminais
    }

    
    
}
