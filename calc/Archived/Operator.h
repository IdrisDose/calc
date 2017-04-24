//
//  Operator.h
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operator.h"

typedef int (^operationBlock)(int a, int b);

@interface Operator : NSObject

- (void) addPlus;
- (void) addMinus;

// one way to model operators is to have each appearance
// invoke a predefined instance of the "operator" class,
+ (Operator*) operatorNamed:(NSString *) name;

// with appropriate properties on that instance
@property NSString * name; // eg "+"
@property int precedence;
@property operationBlock operate;



@end
