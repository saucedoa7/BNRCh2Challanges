//
//  main.m
//  Chapter 2 Challenges
//
//  Created by Albert Saucedo on 9/18/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

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
        /*
         //Send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
         [items addObject:@"One"];
         [items addObject:@"Two"];
         [items addObject:@"Three"];

         //Send another message, insertObjectAtIndex:, to that same array object
         [items insertObject:@"Zero" atIndex:0];

         //For every item in the item array
         for (NSString *item in items) {
         // Log the desc of the item
         NSLog(@"For Item %@", item);
         }
         */

#pragma mark (4) create an instance of BNRItem and log its instance variables to the console (First Options). Dot notation is prefered

        /*
         Item *item = [Item new];

         // This creates an NSString, "Red Sofa" and gives it to the BNRItem

         [item setItemName:@"Red Sofa"];
         //or
         item.itemName = @"Red Sofa";

         // This creates an NSString, "A1B1" and gives it to the BNRItem

         [item setSerialNumber:@"A1B1"];
         //or
         item.serialNumber = @"A1B1C";

         // This creates an Int, 100 and gives it to the BNRItem

         [item setValueInDollars:100];
         //or
         item.valueInDollars = 100;

         // This creates an Int, 100 and gives it to the BNRItem


         NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);

         //or

         NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);

         //or with accessors
         */

#pragma mark (6) Chain of Initializers
        /*
         //“ replace the statement that prints out the instance variables individually with a statement that relies on BNRItem’s implementation of description”

         //        Item *itemWithFullDescription = [[Item alloc] initWithItemName:@"Red Sofa"
         //                                       serialNumber:@"A1b1"
         //                                     valueInDollars:100];

         // The %@ token is replaced with the result of sending the description message to the corresponding argument”
         //        NSLog(@"Item -> %@", itemWithFullDescription);

         //        Item *itemWithNAme = [[Item alloc] initWithItemName:@"Blue Sofa"];
         //        NSLog(@"Item W/ Name -> %@", itemWithNAme);

         //“you must override init in BNRItem to link to BNRItem’s designated initializer.”
         //        Item *itemWithNoNAme = [Item new];
         //        NSLog(@"Item W/o Name -> %@", itemWithNoNAme);
         */

#pragma mark (13) Fill the items array with 10 randomly-created instances of BNRItem.
        /*
        //Then you will loop through the array and log each item

        for (int i; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }

*/

#pragma mark (Gold 6) Creat a new Container
        BNRContainer *possetions = [[BNRContainer alloc] initWithContainerName:@"My Stuff"];


        //Add a few items to the container
        for (int i = 0; i < 10; i++) {
            BNRItem *b  = [BNRItem randomItem];
            [possetions addItemToContainer:b];
        }

        //Display the container, it's value, and the items it contains
        NSLog(@"%@", possetions);

        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }


        /*
         //lastObject is an instance of Item class and will not understand the count message..
         
         id lastObject = [items lastObject];
         [lastObject count];
         */
        
        //Destroy the mustable array object
        items = nil;
    }
    return 0;
}

