//
//  SelectPlayerController.swift
//  TerminalFatal
//
//  Created by Caio Madeira on 12/08/20.
//  Copyright © 2020 Caio Madeira. All rights reserved.
//

import UIKit
import TinyConstraints

class SelectPlayerController: UIViewController{
    
    
    var playerName = ""
    var playerTerminal = ""
    
    let defaultName = "Operador:"
    let defaultTerminal = "Terminal:"
    
    
    //MARK: - Aqui as variaveis sao declaradas como opcionais. Basicamente, digo ao XCode que não sei se ela vai ter um valor. (No caso, se ela vai ou não carregar um GIF)
    
    @IBOutlet weak var player1View: UIImageView?
    @IBOutlet weak var player2View: UIImageView?
    @IBOutlet weak var backButtom: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var terminalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = defaultName + " " + playerName
        nameLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        nameLabel.textColor = .systemGreen
        nameLabel.backgroundColor = .black
        
        terminalLabel.text = playerTerminal
        
        
        
        
        //MARK: - A view vai carregar automaticamente a imagem do primeiro character. Nesse caso, estou afirmando que a variavel SEMPRE vai possuir um valor e, de fato, a View sempre será carregada com esse character, pois ele é o Default no contexto da aplicação.
        
        player1View!.loadGif(name: "player0image" )
        backButtom.layer.cornerRadius = 5
        backButtom.layer.masksToBounds = true
        
        nextButton.layer.cornerRadius = 5
        nextButton.layer.masksToBounds = true

        
    }
    
    
    @IBAction func nextChar(_ sender: Any) {
        
        player1View?.isHidden = true
        player2View?.isHidden = false
        player2View?.loadGif(name: "player1image" )
        
        
    }
    
    
    @IBAction func backChar(_ sender: Any) {
        
        player2View?.isHidden = true
        player1View!.isHidden = false
        player1View!.loadGif(name: "player0image")
        
    }
        
        
    //a  funcao newGame nao estava indo, mudei o  sender para  AnyObject e foi
    
    
    @IBAction func newGame(_ sender: AnyObject) {
        let thirdVC = PrologueController()
        
        self.present(thirdVC, animated: true, completion: nil)
        
    }
    
    @IBAction func continuaGame(_ sender: Any) {
    }
    
    @IBAction func quitGame(sender: AnyObject){
        exit(0)
        
    }
    
    var player = [Controladores(nome: " aaaa ", terminal: "12")]
    
    

    

    
}
