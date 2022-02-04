//
//  Questions.swift
//  MG
//
//  Created by Grisha Pospelov on 03.02.2022.
//

final class Questions {
    private init() {
        var questions = [Question]()
        //-----
        var answer1 = Answer("2", true)
        var answer2 = Answer("3")
        var answer3 = Answer("0")
        var answer4 = Answer("1")
        var question = Question(text: "1+1", answers: [answer1, answer2, answer3, answer4])
        questions.append(question)
        //-----
        answer1 = Answer("3")
        answer2 = Answer("4", true)
        answer3 = Answer("2")
        answer4 = Answer("1")
        question = Question(text: "2+2", answers: [answer1, answer2, answer3, answer4])
        questions.append(question)
        //-----
        answer1 = Answer("6", true)
        answer2 = Answer("7")
        answer3 = Answer("4")
        answer4 = Answer("5")
        question = Question(text: "3+3", answers: [answer1, answer2, answer3, answer4])
        questions.append(question)
        //-----
        answer1 = Answer("8")
        answer2 = Answer("6")
        answer3 = Answer("8", true)
        answer4 = Answer("3")
        question = Question(text: "4+4", answers: [answer1, answer2, answer3, answer4])
        questions.append(question)
        //-----
        answer1 = Answer("4")
        answer2 = Answer("10", true)
        answer3 = Answer("3")
        answer4 = Answer("1")
        question = Question(text: "5+5", answers: [answer1, answer2, answer3, answer4])
        questions.append(question)
        //-----
        answer1 = Answer("9")
        answer2 = Answer("12", true)
        answer3 = Answer("2")
        answer4 = Answer("1")
        question = Question(text: "6+6", answers: [answer1, answer2, answer3, answer4])
        questions.append(question)
        //-----
        self.questions = questions
        
    }
    static let shared = Questions()
    let questions: [Question]
    
    func findCorrectAnswer(_ questionNumber: Int) -> Answer? {
        if questions.count < (questionNumber - 1) {
            return nil
        }
        let question = questions[questionNumber]
        return question.answers.first(where: {$0.isCorrect})
    }
}
