//
//  WeiXinShakeController.m
//  MGHRouter+WeiXinShake
//
//  Created by Jn_Kindle on 2018/8/23.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import "WeiXinShakeController.h"
#import "MainViewController.h"
#import "MGJRouter.h"
#import "ShakeView.h"

@interface WeiXinShakeController ()


@property (nonatomic, weak) ShakeView *shakeView;

@property (nonatomic) SEL selectedSelector;

@end

@implementation WeiXinShakeController

+ (void)load
{
    WeiXinShakeController *weixinShakeController = [[WeiXinShakeController alloc] init];
    [MainViewController registerWithTitle:@"微信摇一摇" handler:^UIViewController *{
        weixinShakeController.selectedSelector = @selector(shakeWithWeiXin);
        return weixinShakeController;
    }];
}

-(ShakeView *)shakeView
{
    if (!_shakeView) {
        ShakeView *shakeView = [[ShakeView alloc] initWithFrame:CGRectMake(0, 0, JnScreenWidth, JnScreenHeight)];
        [self.view addSubview:shakeView];
        _shakeView = shakeView;
    }
    return _shakeView;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self performSelector:self.selectedSelector withObject:nil afterDelay:0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"摇一摇";
    
    [self shakeView];
}

- (void)shakeWithWeiXin
{
    [MGJRouter registerURLPattern:@"wx://function/shake" toHandler:^(NSDictionary *routerParameters) {
        JNLog(@"%@",[NSString stringWithFormat:@"routerParameters:%@", routerParameters]);
    }];
    [MGJRouter openURL:@"wx://function/shake"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.shakeView shake];
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    [self.shakeView shake];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}




@end
