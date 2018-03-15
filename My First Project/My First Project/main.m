//
//  main.m
//  My First Project
//
//  Created by Mo Li on 3/12/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int anwser = arc4random() % 100 + 1;
        int guess = 0;
        int turn = 0;
        
        while(guess != anwser) {
            turn++;
            
            NSLog(@"Guess #%i: Enter the number between 1 to 100:", turn);
            scanf("%i", &guess);
            
            if(guess < anwser) {
                NSLog(@"Lower");
            } else if(guess > anwser) {
                NSLog(@"Higer");
            } else {
                NSLog(@"The anwser is %i", anwser);
            }
        }
        NSLog(@"You tried %d times.", turn);
    }
    return 0;
}
