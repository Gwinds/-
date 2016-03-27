//
//  SecondViewController.m
//  代理传值
//
//  Created by doubi on 16/3/11.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()
- (IBAction)BackBtnTap:(id)sender;
- (IBAction)NextBtnTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *TextFildtText;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor=[UIColor redColor];
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ThirdViewController *three=[segue destinationViewController];
    three.reg1=self.reg;

    three.delegate=self;

}
- (IBAction)BackBtnTap:(id)sender {
   
    [self.delegate passValue:@"I am from two"];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)NextBtnTap:(id)sender {
    
    [self performSegueWithIdentifier:@"two" sender:self];
}
-(void)viewWillAppear:(BOOL)animated
{
    self.label.text=self.reg;

}
-(void)passValue:(NSString *)obj
{
    self.reg=obj;
   
}
@end
