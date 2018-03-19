//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Mo Li on 3/19/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView {
    //  Create a view
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    // Set it as the view of this view controller
    self.view = backgroundView;
}

@end
