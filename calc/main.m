//
//  main.m
//  calc
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if (argc <= 0){
            NSLog(@"There are no equations.");
        } else {
            for(int i = 0; i < (sizeof argv); i++){
                printf("CHAR: %s \n",argv[i]);
            }
        //NSLog(@"Hello, World!");
        }
    }
    return 0;
}
