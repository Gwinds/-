//
//  SecondViewController.m
//  单例传值
//
//  Created by doubi on 16/3/20.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "SecondViewController.h"
#import "SingletoPassValue.h"
@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TextFildText;
- (IBAction)SingletoBtn:(id)sender;
- (IBAction)Cancel:(id)sender;
- (IBAction)UseDefaultBtn:(id)sender;
- (IBAction)NotificationBtn:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(BOOL)notEmpty
{
    if (self.TextFildText.text.length==0) {
        return NO;
    }
    return  YES;
}
- (IBAction)SingletoBtn:(id)sender {
    if ([self notEmpty]) {
        SingletoPassValue *Singe=[SingletoPassValue PassValue];
        Singe.myName = self.TextFildText.text;
        [self dismissViewControllerAnimated:YES completion:nil];
    }else{
        [self showAlert];
    }
}

-(void)showAlert
{
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"提示" message:@"qing 输入 xxxx" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"I know" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)Cancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)UseDefaultBtn:(id)sender {
    if ([self notEmpty]) {
        [[NSUserDefaults standardUserDefaults]setObject:self.TextFildText.text forKey:@"myNameText"];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    [self showAlert];
}

- (IBAction)NotificationBtn:(id)sender {
    if ([self notEmpty]) {
        [[ NSNotificationCenter defaultCenter ]postNotificationName:@"ChangeNameNotification" object:self userInfo:@{@"name":self.TextFildText.text}];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else
    {
        [self showAlert];
    }
    
}
@end
