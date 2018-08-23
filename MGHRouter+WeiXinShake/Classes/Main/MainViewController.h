//
//  MainViewController.h
//  MGHRouter+WeiXinShake
//
//  Created by Jn_Kindle on 2018/8/23.
//  Copyright © 2018年 JnKindle. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIViewController *(^ViewControllerHandler)();

@interface MainViewController : UIViewController

+ (void)registerWithTitle:(NSString *)title handler:(ViewControllerHandler)handler;

@end
