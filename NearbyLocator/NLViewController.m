//
//  NLViewController.m
//  NearbyLocator
//
//  Created by Andrew on 6/25/14.
//  Copyright (c) 2014 GRL5. All rights reserved.
//

#import "NLViewController.h"

@interface NLViewController ()

@end

@implementation NLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
-(void)setDirection:(CGFloat)direction
{
    _direction = direction;
    self.triangle.transform = CGAffineTransformMakeRotation(_direction);
}

@end