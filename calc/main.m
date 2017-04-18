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
        /*
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
        NSLog(@"%@", equation);

        NSLog(@"Now doing maths?");
        NSString *temp = [oper testString];
        NSNumber *result = 0;
        NSExpression *expression = nil;

        @try {
            expression = [NSExpression expressionWithFormat:equation];
            result = [expression expressionValueWithObject:nil context:nil];
        }
        @catch (NSException *exception) {
            NSLog(@" ERROR: Something broke with the maths!");
        }



        NSLog(@"Equation: %@",equation);
        NSLog(@"%@",temp);
        NSLog(@"Answer: %@",result);
        //~22.5hrs worth of code???
        //Chyea.
    }
    return 0;
    */

    NSArray *arguments = [[NSProcessInfo processInfo] arguments];
    typedef NSExpression Expression;


       @try {

           Expression * expression = [[Expression alloc] init];

           [expression expressionWithStrings:arguments];



           result = [expression evaluate];

           NSLog(@"%d", result);



       } @catch (NSException * e) {

           NSLog(@"%@", e.reason);

           return -1;

       }



       return 0;
}
