//
//  Expression.h
//  proj1
//
//  Created by Jesse Clark on 7/4/17.
//  Copyright © 2017 Jesse Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Evaluatable.h"

@interface Expression : NSObject <Evaluatable>

+ (Expression *) expressionWithStrings:(NSArray*)args;

- (int)evaluate;

@end
