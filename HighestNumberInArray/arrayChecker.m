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

- (float)highestNumberInArray:(NSArray *)array
{
    //NSNumber *highestNumber = [[NSNumber alloc]initWithInt:[array[0]]];
    int highestNumber = (int)array[0];
    int nextNumber = 1;
    
    while (nextNumber <= array.count-1) {
        if (highestNumber > (int)array[nextNumber]) {
            nextNumber++;
        } else {
            highestNumber = (int)array[nextNumber];
            nextNumber++;
        }
    }
    
    NSLog(@"The highest number is %d!\n", highestNumber);
    return highestNumber;
    
}

@end
