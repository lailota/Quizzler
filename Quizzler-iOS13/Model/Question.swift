//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Laila Guzzon Hussein Lailota on 30/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a:String){
        text = q
        answer = a
    }
}
