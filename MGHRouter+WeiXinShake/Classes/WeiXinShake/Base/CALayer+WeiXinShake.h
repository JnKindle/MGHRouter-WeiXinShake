//
//  CALayer+WeiXinShake.h
//  MGHRouter+WeiXinShake
//
//  Created by Jn_Kindle on 2018/8/23.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

typedef NS_ENUM(NSInteger,AxesDirection) {
    PositiveAxes, //正半轴
    NegativeAxes  //负半轴
};

@interface CALayer (WeiXinShake)


- (void)addShakeAnimationWithDuration:(CFTimeInterval)duration toValue:(id)toValue;

@end
