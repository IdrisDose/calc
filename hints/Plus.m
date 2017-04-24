//
//  Plus.m
//  proj1
//
//  Created by Jesse Clark on 7/4/17.
//  Copyright © 2017 Jesse Clark. All rights reserved.
//

#import "Plus.h"

@implementation Plus

- (NSString *)name {
    return @"+";
}

- (int)precedence {
    return 1;
}

- (int)evaluate {
    return [self.left evaluate] + [self.right evaluate];
}

@end
