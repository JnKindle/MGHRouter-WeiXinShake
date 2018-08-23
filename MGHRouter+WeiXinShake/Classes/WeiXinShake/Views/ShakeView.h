//
//  ShakeView.h
//  MGHRouter+WeiXinShake
//
//  Created by Jn_Kindle on 2018/8/23.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShakeView : UIView


/**
 背景图片
 */
@property (nonatomic, strong) UIImage *shakeBackgroundImage;


/**
 摇一摇
 */
- (void)shake;

@end
