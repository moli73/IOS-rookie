//
//  Person.m
//  PeopleDatabase
//
//  Created by Mo Li on 3/13/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)enterInfo {
    NSLog(@"Enter your first name?");
    char cstring[40];
    scanf("%s", cstring);
    firstName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"What is your last name?");
    scanf("%s", cstring);
    lastName = [NSString stringWithCString: cstring encoding:1];
    
    
    NSLog(@"How old are you, %@ %@ ?", firstName, lastName);
    scanf("%i", &age);
}

- (void)printInfo {
    NSLog(@"%@ %@ is %i years old", firstName, lastName, age);
}
@end
