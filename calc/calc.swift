//
//  calc.swift
//  calc
//
//  Created by Dose on 23/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

import Foundation
class Calc{
    var expression: String
    var result: Int?
    let validation = Validation()
    
    init(expression:String){
        self.expression = expression
        self.result = 0
    }
    
    init(){
        self.expression = ""
        self.result = 0
    }    
    
    
    /// Executes the validated and formated expression stored within the class.
    ///
    /// - Returns: Returns an evaluated Integer.
    func execute()->Int{
        
        let maths = NSExpression(format:self.expression)
        return maths.expressionValue(with: nil, context: nil) as! Int
    }

    /// Populates the expression string with an array.
    ///
    /// - Parameter array: Inpute String Array
    func createExpression(array:Array<String>?){
        // Foreach element in parsed array
        // append the string element to create a single string
        
       
        for element in (array?.dropFirst())!{
            let expressionNode = validation.formatNumber(inputString: element)
               expression.append(expressionNode)
        }
    }
    
    
    
}
