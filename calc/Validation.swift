//
//  Validation.swift
//  calc
//
//  Created by Dose on 24/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

import Foundation

class Validation{
    var inputString: String
    
    
    let positiveNumRegex = "\\+[0-9]"
    let plus = "+"
    let minus = "-"
    let divide = "/"
    let multi = "*"
    
    enum InvalidNumber : Error{
        case NumberTooBig
        case InvalidNumber
    }
    
    
    init(){
        inputString=""
    }
    
    func setInputString(input: String){
        self.inputString = input
    }
    
    
    
    /// Returns a True or False if text meets regex's condition
    ///
    /// - Parameters:
    ///   - input: Input Text to test
    ///   - regex: regex expression to test
    /// - Returns: Boolean of the result
    func checkNumAgainstRegex(input: String,regex: String)->Bool{
        let testString = NSPredicate(format:"SELF MATCHES %@", regex)
        return testString.evaluate(with: input)
    }
    
    
    /// Formats input if the input is a string.
    ///
    /// - Parameter inputString: A String of either a int or an operator
    /// - Returns: returns a String or a formatted operator
    func formatNumber(inputString:String) ->String{
        var formattedString = ""
        
        if(inputString=="x"){
            
            formattedString = "*"
            
        }else if(inputString=="%"){
            
            print("Modulus not supported yet.")
            exit(2)
        }else if(inputString==plus || inputString==minus || inputString==divide || inputString==multi){
            
            formattedString = inputString
            
        } else if(!(checkNumAgainstRegex(input: inputString,regex: positiveNumRegex))){
            formattedString = inputString.replacingOccurrences(of: "+", with: "")
            validatedString(input: formattedString)
            
        } else {
            
            validatedString(input: inputString)
            formattedString = inputString
            
        }
        
        return formattedString
    }
    
    
    /// Validate any strings that may occur
    ///
    /// - Parameter input: String to be validated
    func validatedString(input: String){
        if(getNumber(number: input) > Int.max){
            print("Invalid Input "+input)
            exit(2)
        }
    }
    
    
    /// Converts Any data type to NSNumber
    /// Code snippet from: http://stackoverflow.com/posts/41821197/revisions
    /// - Parameter number: Object to be converted to Int
    /// - Returns: NSNumber value of the inputted object
    func getNumber(number: String) -> Int {
        do{
            guard let num = Int(number) else {throw InvalidNumber.NumberTooBig}
            return num
        } catch {
            print("Invalid Input "+number)
            exit(2)
        }
    }
    
    
}
