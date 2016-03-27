//
//  SecondViewController.h
//  代理传值
//
//  Created by doubi on 16/3/11.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "passValueDelegate.h"
@interface SecondViewController : UIViewController<passValueDelegate>
//属性传值
@property(strong,nonatomic)NSString *reg;

@property(strong,nonatomic)id<passValueDelegate>delegate;
@end
