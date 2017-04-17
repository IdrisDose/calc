//
//  main.m
//  calc
//

#import <Foundation/Foundation.h>

int main(int argc, const char **argv) {
    @autoreleasepool {

        //Grab args into a string from char array
        //Convert Args to arithmatic
        //Do some error checking
        //Then math it all.
        //Print Answer.
        //Run Test Case
        //Submit.


        //Looks at basic array and then dumps.
        NSString *equation = (char *)argv[1] ? [NSString stringWithUTF8String:(char *)argv[1]] : nil;
        equation = [equation stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        NSLog(@"Equation: %@",equation);

        //~22.5hrs worth of code???
        //Chyea.
    }
    return 0;
}
