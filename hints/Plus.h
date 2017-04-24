//
//  Plus.h
//  proj1
//
//  Created by Jesse Clark on 7/4/17.
//  Copyright © 2017 Jesse Clark. All rights reserved.
//

#import "Operator.h"
#import "Evaluatable.h"

@interface Plus : Operator <Evaluatable>

- (int)evaluate;

@end
