//
//  arrayChecker.m
//  HighestNumberInArray
//
//  Created by Marc Maguire on 2017-02-01.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "arrayChecker.h"

@implementation arrayChecker

- (int)highestNumberInArray:(NSArray *)array
{

    int highestNumber = [array[0] intValue];
    int nextNumber = 1;
    
    while (nextNumber <= array.count-1) {
        if (highestNumber > [array[nextNumber] intValue]) {
            nextNumber++;

        } else {
            highestNumber = [array[nextNumber] intValue];
            nextNumber++;
        }
    }

    //NSLog(@"The highest number is %d!\n", highestNumber);
    return highestNumber;
}

@end
//lesson here is that you cannot compare NSNumbers in an array without converting them, if you do not convert (which is why this didn't work the first couple times) you will be comparing pointer values, and those suckers are weird numbers.
