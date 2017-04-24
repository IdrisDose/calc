//
//  Plus.m
//  calc
//
//  Created by Dose on 19/4/17.
//  Copyright © 2017 UTS. All rights reserved.
//

#import "Plus.h"

@implementation Plus

- (NSString *)name {
    return @"+";
}

- (int)precedence {
    return 1;
}
@end
