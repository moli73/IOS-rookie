//
//  main.m
//  RandomItems
//
//  Created by Mo Li on 3/23/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 5; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        BNRContainer *container = [[BNRContainer alloc] initWithName:@"myContainer"
                                                        withSubitems:items];
        NSLog(@"%@", container);
        
        
        for(BNRItem *item in container.subitems) {
            NSLog(@"%@", item);
        }
        
        container = nil;
        items = nil;
    }
    return 0;
}
