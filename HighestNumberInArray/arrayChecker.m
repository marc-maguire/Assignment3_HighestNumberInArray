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

    int highestNumber = 0;
    int i = 0;
   
    for (i = 0; i < array.count; i++) {
        int index = [array[i] intValue];
        
        if (highestNumber < index) {
            highestNumber = index;
        }
    }

    return highestNumber;
}

@end
//lesson here is that you cannot compare NSNumbers in an array without converting them, if you do not convert (which is why this didn't work the first couple times) you will be comparing pointer values, and those suckers are weird numbers.
