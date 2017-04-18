//
//  Operators.h
//  proj1
//
//  Created by Jesse Clark on 7/4/17.
//  Copyright © 2017 Jesse Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operator.h"
#import "Evaluatable.h"

typedef int (^operationBlock)(int a, int b);

@interface Operator : NSObject

// one way to model operators is to have each appearance
// invoke a predefined instance of the "operator" class,
+ (Operator*) operatorNamed:(NSString *) name;

// with appropriate properties on that instance
@property NSString * name; // eg "+"
@property int precedence;
@property operationBlock operate;


// another approach is to store subexpressions for later.
// defining a consistent interface for these would make the
// Tree-Balancing Algorithm viable
@property NSObject <Evaluatable> * left;
@property NSObject <Evaluatable> * right;



@end
