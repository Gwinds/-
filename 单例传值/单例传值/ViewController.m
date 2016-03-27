//
//  ViewController.m
//  单例传值
//
//  Created by doubi on 16/3/20.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "SingletoPassValue.h"
@interface ViewController ()
- (IBAction)NextBtnTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
         self=[super initWithNibName:nibNameOrNil bundle:
               nibBundleOrNil];
    if (self) {
//        custom
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    /*
      通知中心传值
     */
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ChangeNameNOtification:) name:@"ChangeNameNotification" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)NextBtnTap:(id)sender {
    SecondViewController *second=[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self presentViewController:second animated:YES completion:nil];
}
-(void)showName:(NSString *)obj
{

    self.label.text=obj;
}
-(void)ChangeNameNOtification:(NSNotification*)obj
{
    NSDictionary *dict=[obj userInfo];
    self.label.text=[dict objectForKey:@"name"];
    
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    /*
     单例传值
     */
    SingletoPassValue *Single=[SingletoPassValue PassValue];
    if ([Single.myName length]!=0) {
        self.label.text=Single.myName;
        Single.myName=@"";
    }

   /*
    NSDefault 传值
    */
        if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"myNameText"] length] != 0) {
            self.label.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"myNameText"];
            [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"myNameText"];
        }
   
}
@end
