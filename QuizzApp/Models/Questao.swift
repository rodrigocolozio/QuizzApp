//
//  Questao.swift
//  QuizzApp
//
//  Created by Rodrigo Colozio on 02/04/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}


let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter? ", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),
    Questao(titulo: "Em que ano Avatar 2 foi lançado?", respostas: ["2014", "2022", "2023"], respostaCorreta: 1),
    Questao(titulo: "Qual é o primeiro filme da franquia Star Wars?", respostas: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], respostaCorreta: 1),
        Questao(titulo: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", respostas: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], respostaCorreta: 0),
        Questao(titulo: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", respostas: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], respostaCorreta: 0),
        Questao(titulo: "Qual é o trabalho de Jay Pritchett na série Modern Family?", respostas: ["Médico", "Empresário", "Advogado"], respostaCorreta: 1),
    Questao(titulo: "Em 007 Cassino Royale, o que James Bond utiliza quando percebe que foi envenenado", respostas: ["Vodka", "Antídoto", "Sal"], respostaCorreta: 2)
]

