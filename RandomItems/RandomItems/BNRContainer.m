//
//  BNRContainer.m
//  RandomItems
//
//  Created by Mo Li on 3/24/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithName:(NSString *)name withSubitems:(NSMutableArray *)items {
    self = [super init];
    
    if(self) {
        self.itemName = name;
        self.subitems = items;
        
        for(BNRItem *item in items) {
            self.valueInDollars += item.valueInDollars;
        }
    }
    
    return self;
}

- (instancetype)init {
    NSMutableArray *items = [[NSMutableArray alloc] init];
    return [self initWithName:@"" withSubitems:items];
}

- (NSString *)description {
    NSString *str = [[NSString alloc] initWithFormat:@"The container %@: Worth $%d, recorded on %@",
                     self.itemName,
                     self.valueInDollars,
                     self.dateCreated];
    
    return str;
}

@end
