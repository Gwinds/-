//
//  ThirdViewController.m
//  属性传值  －－－－－－只能单向传值
//  代理传值
//
//  Created by doubi on 16/3/11.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
- (IBAction)BackBtnTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *TextFildText;

@end

@implementation ThirdViewController

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

- (IBAction)BackBtnTap:(id)sender {
   
    [self.delegate passValue:@"I am from three"];
    [self dismissViewControllerAnimated:YES completion:nil];
  
}
-(void)viewWillAppear:(BOOL)animated
{
    self.label.text=self.reg1;
 

}
@end
