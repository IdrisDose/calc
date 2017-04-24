//
//  Expression.h
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Expression : NSObject
    @property NSString *operator;
    @property int *value;
    @property Expression *left;
    @property Expression *right;

    +(Expression *) expressionWithStrings:(NSArray *)args;
    -(int) evaluate;
    -(NSString *)operatorNamed:(NSString *)input;
@end
