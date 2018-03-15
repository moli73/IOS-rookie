//
//  Person.h
//  PeopleDatabase
//
//  Created by Mo Li on 3/13/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    int age;
}
- (void)enterInfo;
- (void)printInfo;
@end
