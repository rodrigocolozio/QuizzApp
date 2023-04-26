//
//  ViewController.swift
//  QuizzApp
//
//  Created by Rodrigo Colozio on 31/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoInicio: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout(){
        botaoInicio.layer.borderWidth = 2
        botaoInicio.layer.borderColor = UIColor.white.cgColor
        botaoInicio.layer.cornerRadius = 12
    }


    @IBAction func botaoIniciarQuiz(_ sender: Any) {
        print("O botão foi pressionado com sucesso")
    }
}

