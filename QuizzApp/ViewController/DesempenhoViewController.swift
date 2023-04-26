//
//  DesempenhoViewController.swift
//  QuizzApp
//
//  Created by Rodrigo Colozio on 03/04/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    
    var pontuacao: Int?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciaQuiz: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        configuraDesempenho()
        
        // Do any additional setup after loading the view.
    }
    
    func configuraLayout(){
        botaoReiniciaQuiz.layer.cornerRadius = 12.0
    }
    
    func configuraDesempenho() {
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões"
        let percentual = (pontuacao * 100) / questoes.count
        percentualLabel.text = "Percentual final: \(percentual)%"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
