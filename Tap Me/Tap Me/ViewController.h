//
//  ViewController.h
//  Tap Me
//
//  Created by Mo Li on 3/13/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}
- (IBAction)buttonPressed;
@end

