//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Mo Li on 3/20/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "BNRItemStore.h"

#import "BNRItem.h"

@interface BNRItemStore()

@property (nonatomic) NSMutableArray *privateItems;// internal data

@end

@implementation BNRItemStore

+ (instancetype)sharedStore {
    static BNRItemStore *sharedStore = nil;
    
    // for singleton class
    if(!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}

// If programmer calls init, throw exception
- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use + [BNRItemStore sharedStore]" userInfo:nil];
    return nil;
}

- (instancetype)initPrivate {
    self = [super init];
    
    if(self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems {
    return self.privateItems;
}

- (BNRItem *)createItem {
    BNRItem *item = [BNRItem randomItem];
    
    [self.privateItems addObject:item];
    
    return item;
}

- (void)removeItem:(BNRItem *)item {
    [self.privateItems removeObjectIdenticalTo:item];
}

- (void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex {
    if(fromIndex == toIndex) {
        return ;
    } else {
        BNRItem *item = self.privateItems[fromIndex];
        
        [self.privateItems removeObjectAtIndex:fromIndex];
        
        [self.privateItems insertObject:item atIndex:toIndex];
    }
}

@end
