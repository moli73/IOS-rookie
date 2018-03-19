//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Mo Li on 3/16/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()
@property (strong, nonatomic) UIColor *circleColor;
@end

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect) frame {
    self = [super initWithFrame:frame];

    if(self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // add image png file
//    UIImage *shoe = [UIImage imageNamed:@"logo.png"];
//    [shoe drawInRect:bounds];
   
    for(float radius = maxRadius; radius > 0; radius -= 20) {
        //move to next circle start point
        [path moveToPoint:CGPointMake(center.x + radius, center.y)];
        [path addArcWithCenter:center
                        radius:radius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    path.lineWidth = 10.0;
    
    [self.circleColor setStroke];
    [path stroke];

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
//    self.window.userInteractionEnabled = YES;
//    self.window.multipleTouchEnabled = YES;
//    [super touchesBegan:touches withEvent:event];

    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}

- (void)setCircleColor:(UIColor *)circleColor {
    
    _circleColor = circleColor;
    [self setNeedsDisplay];
    
}

@end
