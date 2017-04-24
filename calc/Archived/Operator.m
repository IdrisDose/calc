//
//  Operator.m
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

#import "Operator.h"
#import "Plus.h"

NSMutableDictionary * knownOperators;

@implementation Operator

+ (void)initialize {
    knownOperators = [[NSMutableDictionary alloc] init];
}

+ (Operator*) operatorNamed:(NSString *) name {
    return [knownOperators objectForKey:name];
}

- (void)addPlus{
    Operator * plus = [[Plus alloc] init];
    plus.name = @"+";
    plus.precedence = 1;
    plus.operate = ^int(int a, int b) {
        return a + b;
    };
    [knownOperators setObject:plus forKey:plus.name];
}

- (void)addMinus{
    Operator * minus = [[Plus alloc] init];
    minus.name = @"-";
    minus.precedence = 1;
    minus.operate = ^int(int a, int b) {
        return a - b;
    };
    [knownOperators setObject:minus forKey:minus.name];}
@end
