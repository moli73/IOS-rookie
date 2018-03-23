//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Mo Li on 3/23/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        self.questions = @[@"Question 1", @"Question 2", @"Question 3"];
        self.answers = @[@"A1", @"A2", @"A3"];
        // To start at first question
        self.currentQuestionIndex = -1;
    }
    
    return self;
}

- (IBAction)showQuestion:(id)sender {
    
    self.currentQuestionIndex++;
    
    if(self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender {
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}



@end
