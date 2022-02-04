//
//  Answer.swift
//  MG
//
//  Created by Grisha Pospelov on 03.02.2022.
//

import Foundation

struct Answer {
    let text: String
    let isCorrect: Bool
    
    init(_ answer: String, _ isCorrect: Bool) {
        self.text = answer
        self.isCorrect = isCorrect
    }
    
    init(_ answer: String) {
        self.text = answer
        self.isCorrect = false
    }
}
