//
//  ShakeView.m
//  MGHRouter+WeiXinShake
//
//  Created by Jn_Kindle on 2018/8/23.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import "ShakeView.h"
#import "CALayer+WeiXinShake.h"

@interface ShakeView ()

@property (nonatomic, weak) UIImageView *wholeImageView;
@property (nonatomic, weak) UIImageView *topImageView;

@property (nonatomic, weak) UIImageView *bottomImageView;

@end

@implementation ShakeView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self wholeImageView];
        [self topImageView];
        [self bottomImageView];
    }
    return self;
}

-(void)setShakeBackgroundImage:(UIImage *)shakeBackgroundImage
{
    _shakeBackgroundImage = shakeBackgroundImage;
    self.wholeImageView.image = shakeBackgroundImage;
}

-(UIImageView *)wholeImageView
{
    if (!_wholeImageView) {
        UIImageView *wholeImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ShakeforsongBgshade"]];
        wholeImageView.frame = CGRectMake(0, 0, JnScreenWidth, JnScreenHeight);
        wholeImageView.center = CGPointMake(self.center.x, self.center.y);
        [self addSubview:wholeImageView];
        _wholeImageView = wholeImageView;
    }
    return _wholeImageView;
}

- (UIImageView *)topImageView
{
    if (!_topImageView)
    {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Shake_Logo_Up"]];
        imageView.frame = CGRectMake(0, 0, 150, 83);
        imageView.center = CGPointMake(self.center.x, self.center.y - imageView.frame.size.height/2);
        [self.wholeImageView addSubview:imageView];
        _topImageView = imageView;
    }
    return _topImageView;
}

- (UIImageView *)bottomImageView
{
    if (!_bottomImageView)
    {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Shake_Logo_Down"]];
        imageView.frame = CGRectMake(0, 0, 150, 82);
        imageView.center = CGPointMake(self.center.x, self.center.y + imageView.frame.size.height/2);
        [self.wholeImageView addSubview:imageView];
        _bottomImageView = imageView;
    }
    return _bottomImageView;
}

- (void)shake
{
    CFTimeInterval duration = 0.5;
    CGFloat toValue = 50;
    [self.topImageView.layer addShakeAnimationWithDuration:duration toValue:@(-toValue)];
    [self.bottomImageView.layer addShakeAnimationWithDuration:duration toValue:@(toValue)];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
}


@end
