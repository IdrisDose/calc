//
//  main
//
//  Created by Idris on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//
//  Program please don't be FUBAR

#import <Foundation/Foundation.h>
#import "Expression.h"

int main(int argc, const char **argv) {
    @autoreleasepool {
        
        //NSArray *arguments = [[NSProcessInfo processInfo] arguments];
        NSMutableArray *args = [NSMutableArray new];
        for (int i = 1; i < argc; i++)
            [args addObject:@(argv[i])];
        
        
        for(int i = 0; i < sizeof(args)-1; i++){
            if([args[i] isEqual:@"x"])
                args[i]=@"*";
        }
        NSString *argsFam = [args componentsJoinedByString:@" "];
        
        //Try to do math and hopefully not break?
        @try{
            //Create an Expression Tree;
            
            //But what is an expression tree?
            // 1 + 1 =
            
            //   +
            //  1 1
            
        }@catch(NSException * ex){
            NSLog(@"Something Broke: %@",ex);
        }
        
    }
    return 0;
}
