//
//  ViewController.m
//  Tap Me
//
//  Created by Mo Li on 3/13/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    scoreLabel.text = @"Pressed!";
}
@end
