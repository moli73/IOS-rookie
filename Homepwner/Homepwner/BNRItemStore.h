//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Mo Li on 3/20/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+ (instancetype)sharedStore;

- (BNRItem *)createItem;

@end
