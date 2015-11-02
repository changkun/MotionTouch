//
//  MotionData.m
//  TouchMotion Collect
//
//  Created by 欧长坤 on 24/10/15.
//  Copyright © 2015 Changkun Ou. All rights reserved.
//

#import "MotionData.h"

@implementation MotionData

- (instancetype)initWithUserID:(int)userID
                          andX:(CGFloat)x
                          andY:(CGFloat)y
                       andRoll:(double)roll
                      andPitch:(double)pitch
                        andYaw:(double)yaw
                       andAccX:(double)accX
                       andAccY:(double)accY
                       andAccZ:(double)accZ
              andRotationRateX:(double)rotationX
              andRotationRateY:(double)rotationY
              andRotationRateZ:(double)rotationZ
                       andHand:(int)hand
                       andTime:(NSDate *)time
                 andMovingFlag:(int)flag {
    if (self == [super init]) {
        _userID = userID;
        _x = x;
        _y = y;
        _roll = roll;
        _pitch = pitch;
        _yaw = yaw;
        _accx = accX;
        _accy = accY;
        _accz = accZ;
        _rotationRateX = rotationX;
        _rotationRateY = rotationY;
        _rotationRateZ = rotationZ;
        _hand = hand;
        _time = time;
        _movingFlag = flag;
    }
    return self;
}

- (NSString *)description
{
    if (_hand == 0)
        return [NSString stringWithFormat:@"%d,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,left,%d,'%@'", _userID, _x, _y, _roll, _pitch, _yaw, _accx, _accy, _accz, _rotationRateX, _rotationRateY, _rotationRateZ, _movingFlag, _time];
    else
        return [NSString stringWithFormat:@"%d,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,right,%d,'%@'", _userID, _x, _y, _roll, _pitch, _yaw, _accx, _accy, _accz, _rotationRateX, _rotationRateY, _rotationRateZ, _movingFlag, _time];
    
}

@end