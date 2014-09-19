//
//  BNRContainer.m
//  Chapter 2 Challenges
//
//  Created by Albert Saucedo on 9/18/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

@synthesize containerItems, containerName;

#pragma mark (Gold 3) Initializers
//Must override the superclass's initializer because this class implements it's own designiated initializer
-(id)init{
    return [self initWithContainerName:@"Container"];
}

//designated initializer
-(id)initWithContainerName:(NSString *)name{
    //call the superclass's initializer
    self= [super init];

    //validate
    if (self) {
        [self setContainerName:name];
        [self setContainerItems:[[NSMutableArray alloc] init]];
    }

    //return the address of the newly initialized object
    return self;
}

#pragma mark (Gold 4) Instance Methods

-(int)totalValueInDollars{
    int value = 0;

    //check the array
    if (!containerItems || [containerItems count] == 0) {
        return value;
    }

    //Get the total value
    for (BNRItem *item in containerItems) {
        value += [item valueInDollars];
    }

    //return the result
    return value;
}

//Adds a new item to the container
-(void)addItemToContainer:(id)itemToAdd{
    [containerItems addObject:itemToAdd];
}

//Removes an item
-(void)removeItemFromConatiner:(id)itemToRemove{
    [containerItems removeObject:itemToRemove];
}

#pragma mark (Gold 5) Overrides

-(NSString *)description{

    //Build a human readable description
    NSString *descriptionStr = [[NSString alloc] initWithFormat:@"Container\n Name: %@\n Value: %d\n Items:\n %@", [self containerName], [self totalValueInDollars], containerItems];

    return descriptionStr;
}
@end
