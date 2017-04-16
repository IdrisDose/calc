//
//  main.m
//  calc
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        for(int i = 0; i < argv.length; i++)){
            print("HELLO WORLD: %c",argv[i]);
        }
        //NSLog(@"Hello, World!");
    }
    return 0;
}
