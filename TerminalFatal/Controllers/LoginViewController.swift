//
//  ViewController.swift
//  TerminalFatal
//
//  Created by Caio Madeira on 11/08/20.
//  Copyright © 2020 Caio Madeira. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    

    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var terminalTextField: UITextField!
    
    var nomeDoControlador = ""
    var nomeDoTerminal = ""

    
    @IBAction func entrar(_sender: Any) {
        self.nomeDoControlador = nomeTextField.text!
        performSegue(withIdentifier: "goToPlayer", sender: self)
        
        self.nomeDoTerminal = terminalTextField.text!
        performSegue(withIdentifier: "goToPlayer", sender: self)
        
        //MARK: PASS DATA
        self.performSegue(withIdentifier: "goToPlayer", sender: self)

    }
    
    //MARK: Aqui usamos o metodo prepare segue herdado da UIVIEWCONTROLLER. É ideal para telas que levam para mais de uma telas.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // iremos verificar para diferenciar as segues caso haja mais de uma
        // p a msm tela. O identificador eh importante para segues n esqueça
        // de coloca-lo no main storyboard
        
        if segue.identifier == "goToPlayer"{
            //criando uma  referencia p/ o novo controlador
            //que sera inicializado quando a segue for executada
            let destinationVC = segue.destination as! SelectPlayerController
            destinationVC.playerName = self.nomeDoControlador
            
            let destinationVCTwo = segue.destination as! SelectPlayerController
            destinationVCTwo.playerTerminal = self.nomeDoTerminal
            
        }
    }
    
}


