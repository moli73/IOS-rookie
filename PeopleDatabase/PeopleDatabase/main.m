//
//  main.m
//  PeopleDatabase
//
//  Created by Mo Li on 3/13/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *people = [[NSMutableArray alloc] init];
        char response;
        do {
            Person *newPerson = [[Person alloc] init];
            [newPerson enterInfo];
            [newPerson printInfo];
            
            [people addObject: newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            
            scanf("\n%c", &response);
        } while(response == 'y');

        NSLog(@"The number of people in database: %li", [people count]);
        for(Person *onePerson in people) {
            [onePerson printInfo];
        }
        
    }
    return 0;
}
