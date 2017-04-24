//
//  Expression.m
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

#import "Expression.h"

@implementation Expression
    +(Expression *)expressionWithStrings:(NSArray *)args{
        
        Expression * expr = [[Expression alloc] init];
        for(NSString *token in args){
            if(token)
        }
    }
    
    -(int)evaluate{
        return 0;
    }

    -(NSString *) operatorNamed:(NSString *)input{
        if([input isEqual:@"+"]){
            return "+";
        }
        
        if(
    }
@end
