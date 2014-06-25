//
//  NLViewController.m
//  NearbyLocator
//
//  Created by Andrew on 6/25/14.
//  Copyright (c) 2014 GRL5. All rights reserved.
//

#import "NLViewController.h"

#import "NLDirectionManager.h"

@interface NLViewController () <NLDirectionManagerDelegate>

@property (nonatomic, strong, readonly) NLDirectionManager *directionManager;

@end

@implementation NLViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        
        _directionManager = [[NLDirectionManager alloc] init];
        _directionManager.delegate = self;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.directionManager startUpdatingDirection];
}

- (void)directionManager:(NLDirectionManager *)manager didUpdateDirection:(CGFloat)direction
{
    self.direction = -direction;
}

-(void)setDirection:(CGFloat)direction
{
    _direction = direction;
    self.triangle.transform = CGAffineTransformMakeRotation(_direction);
}

@end
