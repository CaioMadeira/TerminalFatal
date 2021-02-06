//
//  PrologueController.swift
//  TerminalFatal
//
//  Created by Caio Madeira on 14/08/20.
//  Copyright © 2020 Caio Madeira. All rights reserved.
//


import UIKit

class PrologueController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black//Aqui colocamos uma cor na view da label para diferencia-la do resto
        // ao inves de por "UIColor.red", basta por ".red", pois, o XCode sabe ao que você está se referindo.
        
        let label  = UILabel() // Inicializamos o UI Label object
        label.text = "New Game" //para acessar as propriedades da label basta adicionar um ponto para acessar as propriedades e metodos
        label.frame =  CGRect(x: 0, y: 0, width: 100, height: 50)// esse eh o retangulo frame que nos diz o tamanho e a localização
        // precisa criar um CGRect e depois inicializa-lo
        
        //adicionando a label na tela por meio de uma view
        view.addSubview(label) // O Label HERDA diretamente do UIView
        //view = pai || (UIView) = filho
        
        
        
        
    }
    
    
    
    
}

