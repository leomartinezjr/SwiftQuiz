//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Luana Martinez de La Flor on 17/08/21.
//

import UIKit

class QuizViewController: UIViewController {

    
    
    
    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQuestion: UILabel!
    
    @IBOutlet var btAnswers: [UIButton]!
    
    
    let quizManager = QuizManager()
    
    
    
    override func viewDidLoad() { // implementa sempre q um view aparece
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear) {
            self.viTimer.frame.size.width = 0
        } completion: { (sucess) in
            self.showResults()
        }
        
        getNewQuiz()
}
    
    func getNewQuiz(){
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question // pega pergunta
        for i in 0..<quizManager.optios.count{
            let option = quizManager.optios[i] // alimenta os botes com a opcao no bamco com o lugar das perguntas
            let button = btAnswers[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil) // chama a proxima tela pela Segue
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // passa informacoes para proxima tela
        let resultViewcontroller = segue.destination as! ResultViewController // trata uma classe como outroa
        resultViewcontroller.totalAnwers = quizManager.totalAnswer
        resultViewcontroller.totalCorrectAnswers = quizManager.totalCorrectAnswers
        
        
    }
    
    

    @IBAction func selecAnswer(_ sender: UIButton) {
        
        let index = btAnswers.index(of: sender)!
        quizManager.validateAnswer(index: index) // chama a fun q valida o resposta atravez do index
        getNewQuiz() // chama o proximo quizz
        
        
    }
    
    
    
    
    
   

}
