//
//  BNRContainer.h
//  Chapter 2 Challenges
//
//  Created by Albert Saucedo on 9/18/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem{
    NSString *containerName;
    NSMutableArray *containerItems;
}

@property (nonatomic, copy) NSString *containerName;
@property NSMutableArray *containerItems;

#pragma mark (Gold 1) Initializers
// Designated Initalizer

-(id)initWithContainerName:(NSString *)name;

#pragma mark (Gold 2) Instance Methods

-(int)totalValueInDollars;
-(void)addItemToContainer:(id)itemToAdd;
-(void)removeItemFromConatiner:(id)itemToRemove;

@end
