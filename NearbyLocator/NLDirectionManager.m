//
//  NLDirectionManager.m
//  NearbyLocator
//
//  Created by Russell Ladd on 6/25/14.
//  Copyright (c) 2014 GRL5. All rights reserved.
//

#import "NLDirectionManager.h"

@interface NLDirectionManager () <CLLocationManagerDelegate>

@property (nonatomic, strong, readonly) CLLocationManager *manager;

@end

@implementation NLDirectionManager

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        _manager = [[CLLocationManager alloc] init];
        _manager.delegate = self;
    }
    
    return self;
}

- (void)startUpdatingDirection
{
    [self.manager startUpdatingHeading];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    [self.delegate directionManager:self didUpdateDirection:newHeading.trueHeading * M_PI / 180.0];
}

@end
 