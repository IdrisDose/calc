//
//  Operators.m
//  proj1
//
//  Created by Jesse Clark on 7/4/17.
//  Copyright © 2017 Jesse Clark. All rights reserved.
//

#import "Operator.h"
#import "Plus.h"

NSMutableDictionary * knownOperators;

@implementation Operator

+ (void)initialize {
    knownOperators = [[NSMutableDictionary alloc] init];

    Operator * plus = [[Plus alloc] init];
    plus.name = @"+";
    plus.precedence = 1;
    plus.operate = ^int(int a, int b) {
        return a + b;
    };
    [knownOperators setObject:plus forKey:plus.name];
}

+ (Operator*) operatorNamed:(NSString *) name {
    return [knownOperators objectForKey:name];
}

@end
