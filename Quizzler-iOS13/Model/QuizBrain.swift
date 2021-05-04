//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Laila Guzzon Hussein Lailota on 30/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "O sangue de uma lesma é verde.", a: "Verdadeiro"),
        Question(q: "Aproximadamente um quarto dos ossos humanos estão nos pés.", a: "Verdadeiro"),
        Question(q: "A área de superfície total de dois pulmões humanos é de aproximadamente 70 metros quadrados.", a: "Verdadeiro"),
        Question(q: "Em West Virginia, EUA, se você acidentalmente atropelar um animal com seu carro, você pode levá-lo para casa para comer.", a: "Verdadeiro"),
        Question(q: "Em Londres, Reino Unido, se por acaso você morrer na Câmara do Parlamento, você tem tecnicamente direito a um funeral de estado, porque o prédio é considerado um lugar muito sagrado.", a: "Falso"),
        Question(q: "É ilegal fazer xixi no oceano em Portugal.", a: "Verdadeiro"),
        Question(q: "Você pode conduzir uma vaca escada abaixo, mas não escada acima.", a: "Falso"),
        Question(q: "O Google era originalmente chamado de 'Backrub'.", a: "Verdadeiro"),
        Question(q: "Estima-se que 4% da população mundial seja canhota.", a: "Verdadeiro"),
        Question(q: "O som mais alto produzido por qualquer animal é de 188 decibéis. Esse animal é o Elefante Africano.", a: "Falso"),
        Question(q: "Nenhum pedaço quadrado de papel seco pode ser dobrado ao meio mais de 7 vezes.", a: "Falso"),
        Question(q: "O chocolate afeta o coração e o sistema nervoso de um cão; alguns gramas são suficientes para matar um cachorro pequeno.", a: "Verdadeiro")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float (questionNumber) / Float (quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
