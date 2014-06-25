//
//  NLDirectionManager.h
//  NearbyLocator
//
//  Created by Russell Ladd on 6/25/14.
//  Copyright (c) 2014 GRL5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class NLDirectionManager;

@protocol NLDirectionManagerDelegate <NSObject>

- (void)directionManager:(NLDirectionManager *)manager didUpdateDirection:(CGFloat)direction;

@end

@interface NLDirectionManager : NSObject

@property (nonatomic, weak) id<NLDirectionManagerDelegate> delegate;

- (void)startUpdatingDirection;

@end
