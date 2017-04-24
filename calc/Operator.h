//
//  Operator.h
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operator : NSObject
    -(NSString *)name;
    -(int) precedence;
@end
