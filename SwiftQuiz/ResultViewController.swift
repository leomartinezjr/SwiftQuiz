//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Luana Martinez de La Flor on 17/08/21.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    
    @IBOutlet weak var lbSocre: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnwers: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas Respondidas: \(totalAnwers)"
        lbCorrect.text = "Perguntas Corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas Erradas: \(totalAnwers - totalCorrectAnswers)"
        
        
        let socore = totalCorrectAnswers*100/totalAnwers
        lbSocre.text = "\(socore)%"

    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
