//
//  ViewController.m
//  代理传值
//
//  Created by doubi on 16/3/10.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
- (IBAction)NextBtnTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *TextFieldText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//准备连线时传值
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondViewController *second=[segue destinationViewController];
    second.reg=@"I am from one";
 
 
    second.delegate=self;

}
- (IBAction)NextBtnTap:(id)sender {
    
    
    [self performSegueWithIdentifier:@"one" sender:self];
   
//    [self presentViewController:second animated:YES completion:nil];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    if (self.arg) {
        self.label.text=self.arg;
    }
   
    

}
-(void)passValue:(NSString *)obj
{
    self.arg=obj;
  

}
@end
