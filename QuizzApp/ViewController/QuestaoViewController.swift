//
//  QuestaoViewController.swift
//  QuizzApp
//
//  Created by Rodrigo Colozio on 31/03/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    // MARK: - Atributos
    var pontuacao = 0
    var numeroQuestao = 0
    
    
// MARK: - IBOutlets
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBOutlet var botaoRespostas: [UIButton]!
    
    
 // MARK: - IBActions
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouResposta{
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configuraQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesempenho()
        }

    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        configuraQuestao()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Methods
    
    func configuraLayout (){
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botao in botaoRespostas{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configuraQuestao(){
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botaoRespostas{
            let titulo = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(titulo, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }
    

}
