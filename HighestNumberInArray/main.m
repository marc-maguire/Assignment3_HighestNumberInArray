//
//  main.m
//  HighestNumberInArray
//
//  Created by Marc Maguire on 2017-02-01.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "arrayChecker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        arrayChecker *marcsChecker = [[arrayChecker alloc]init];
        int highestNumber = [marcsChecker highestNumberInArray:@[@111, @2, @3,@40]];
        NSLog(@"The highest number in the example is: %d!\n",highestNumber);
        
    }
    return 0;
}
