//
//  BNRContainer.h
//  RandomItems
//
//  Created by Mo Li on 3/24/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem {
    NSMutableArray *_subitems;
}

- (instancetype)initWithName:(NSString *)name withSubitems:(NSMutableArray *)items;

- (void)setSubitems:(NSMutableArray *)items;
- (NSMutableArray *)subitems;

@end
