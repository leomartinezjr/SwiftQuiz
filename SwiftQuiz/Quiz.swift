//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Luana Martinez de La Flor on 17/08/21.
//

import Foundation



class Quiz {
    
    let question : String // oq o usuario vai ver
    let options: [String]
    private let correctedAnswer: String
    
    
    init(question: String, options: [String], correctedAnswer: String) { // o contrutiutor a classe
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    
    func validateOption(_ index: Int) -> Bool{ // valida se esta certo ou nao por Bool
        
        let answer = options[index]
        return answer == correctedAnswer // se for igual retorna true
        
    }
    
    deinit{
        print ("Liberou a memoria") // mostra a "destruicao de quiz" e depois a criacao 
    }
    
    
    
}



