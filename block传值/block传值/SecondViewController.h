//
//  SecondViewController.h
//  block传值
//
//  Created by doubi on 16/3/8.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef   void(^ReturnTextBlock)(NSString*showText);
@interface SecondViewController : UIViewController
@property(nonatomic,copy)ReturnTextBlock returnTextBlock;
-(void)returnText:(ReturnTextBlock)block;
@end
