//
//  SingletoPassValue.m
//  单例传值
//
//  Created by doubi on 16/3/20.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "SingletoPassValue.h"

@implementation SingletoPassValue
+(instancetype) PassValue
{
    static SingletoPassValue *temp=nil;
    static dispatch_once_t once;
    dispatch_once (&once,^{
    
        temp=[SingletoPassValue new];
    });
    
    /*
       static SingletoPassValue *temp1=nil;
       if(temp==nil)
       {
     
            temp=[[SingletoPassValue alloc]init];
       }
     */
    return temp;
}
@end
