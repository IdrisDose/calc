//
//  main.swift
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

import Foundation

let arguments = CommandLine.arguments

let calc = Calc()

calc.createExpression(array: arguments)

print(calc.execute())



