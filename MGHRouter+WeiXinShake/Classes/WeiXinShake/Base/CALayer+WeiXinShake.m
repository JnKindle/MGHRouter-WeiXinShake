//
//  CALayer+WeiXinShake.m
//  MGHRouter+WeiXinShake
//
//  Created by Jn_Kindle on 2018/8/23.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import "CALayer+WeiXinShake.h"

@implementation CALayer (WeiXinShake)

- (void)addShakeAnimationWithDuration:(CFTimeInterval)duration toValue:(id)toValue
{
    //view向y的正负半轴移动
    CABasicAnimation *shakeAni = [CABasicAnimation animationWithKeyPath:@"transform.translation.y"];
    shakeAni.duration = duration;
    //相对于原来的位置y的正负半轴移动的距离
    shakeAni.toValue = toValue;
    //按照原来的反方向移动
    shakeAni.autoreverses = YES;
    [self addAnimation:shakeAni forKey:@"shakeAni"];
}

@end
