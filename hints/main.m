//
//  main.m
//  proj1
//
//  Created by Jesse Clark on 7/4/17.
//  Copyright © 2017 Jesse Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expression.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arguments = [[NSProcessInfo processInfo] arguments];

        // a simple way to model the problem domain is:
        // 1. parse the input into some data structure
        // 2. evaluate the structured data
        // 3. print the result if no errors have occured yet
        
        @try {
            Expression * expression = [Expression expressionWithStrings:arguments];
            int result = [expression evaluate];
            NSLog(@"%d", result);
        } @catch (NSException * e) {
            // deal with errors
        }
        
    }
    return 0;
}
