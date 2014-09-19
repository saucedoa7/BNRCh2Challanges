//
//  main.m
//  Chapter 2 Challenges
//
//  Created by Albert Saucedo on 9/18/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
#pragma mark (Bronze) Create a bug in your program by asking for the eleventh item in the array. (Done)
        // Run it and note the exception that gets thrown

        NSArray *tenItems = [[NSArray alloc] initWithObjects:@"1",@"2",@"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10",  nil];
        NSLog(@"%@", tenItems);

        /*
        id lastObject = [tenItems lastObject];
        [lastObject count];

        NSLog(@"%@", lastObject);
         */

        NSMutableArray *items = [NSMutableArray new];

#pragma mark (13) Fill the items array with 10 randomly-created instances of BNRItem.

        //Then you will loop through the array and log each item

        for (int i; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }

        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        //Destroy the mustable array object
        items = nil;
    }
    return 0;
}

