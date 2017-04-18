//
//  main.m
//  calc
//

#import <Foundation/Foundation.h>
#import "operators/operator.m"

int main(int argc, const char **argv) {
    @autoreleasepool {

        //Grab args into a string from char array
        //Convert Args to arithmatic
        //Do some error checking
        //Then math it all.
        //Print Answer.
        //Run Test Case
        //Submit.
        id oper = [Operator alloc];
        [oper init];

        NSString *equation = @" ";
        for(int i = 1; i < argc; i++){
            NSString *temp = (char *)argv[i] ? [NSString stringWithUTF8String:(char *)argv[i]] : nil;

            equation = [equation stringByAppendingString:temp];
        }

        equation = [equation stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        //Test Calc;
        [oper setTheString:@"kek"];

        NSString *temp = [oper testString];
        NSExpression *expression = [NSExpression expressionWithFormat:equation];
        NSNumber *result = [expression expressionValueWithObject:nil context:nil];

        NSLog(@"Equation: %@",equation);
        NSLog(@"%@",temp);
        NSLog(@"Answer: %@",result);
        //~22.5hrs worth of code???
        //Chyea.
    }
    return 0;
}
