//
//  SingletoPassValue.h
//  单例传值
//
//  Created by doubi on 16/3/20.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletoPassValue : NSObject
@property(strong,nonatomic) NSString *myName;
+(instancetype)PassValue;
@end
