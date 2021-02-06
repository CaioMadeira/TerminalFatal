//
//  Controladores.swift
//  TerminalFatal
//
//  Created by Caio Madeira on 11/08/20.
//  Copyright © 2020 Caio Madeira. All rights reserved.
//

import UIKit

class Controladores: NSObject {
    // MARK: - Atributos
        
        let nome: String
        let terminal: String
        let itens: Array<Item> = []
        
        // MARK: - Init
        
        init(nome: String, terminal: String) {
            self.nome = nome
            self.terminal = terminal
        }
        
        // MARK: - Metodos
        
        func totalDeTerminais() -> Int {
            var total = 0
            
            for item in itens {
                total += item.terminais
            }
            
            return total
        }
  }

