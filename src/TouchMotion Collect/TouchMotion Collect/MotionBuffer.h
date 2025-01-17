//
//  MotionBuffer.h
//  TouchMotion Collect
//
//  Created by 欧长坤 on 05/11/15.
//  Copyright © 2015 Changkun Ou. All rights reserved.
//

#import <Foundation/Foundation.h>

#define BUFFER_FRAME 50
@interface MotionBuffer : NSObject
{
    double x[BUFFER_FRAME];
    double y[BUFFER_FRAME];
    double z[BUFFER_FRAME];
    
    // 记录缓存尾部，数据连续的从tail至tail-1
    int tail;
    
    int sensor_flag; // 0 表示 devMotion, 1 表示 acc, 2 表示 gyro
    
    int userID;
    int tapIndex;
    int hand;
}

// 初始化时，整个buffer都是0
- (instancetype)initWithSensorFlag:(int)flag;
- (instancetype)initWithBuffer:(MotionBuffer *)buffer;

- (void)setHand:(int)Hand andUserID:(int)userid andTapIndex:(int)tapindex;

- (int)getUserID;
- (int)getTail;
- (int)getSensorFlag;
- (int)getTapIndex;
- (int)getHand;
- (double)getXbyIndex:(int)i;
- (double)getYbyIndex:(int)i;
- (double)getZbyIndex:(int)i;


- (void)addX:(double)X Y:(double)Y Z:(double)Z;

@end
