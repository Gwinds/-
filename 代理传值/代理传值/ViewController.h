//
//  ViewController.h
//  代理传值
//
//  Created by doubi on 16/3/10.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "passValueDelegate.h"

@interface ViewController : UIViewController<passValueDelegate>

@property (strong,nonatomic)NSString *arg;


@end

