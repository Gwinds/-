//
//  ViewController.m
//  block传值
//
//  Created by doubi on 16/3/8.
//  Copyright © 2016年 doubi. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)pushNextPage:(id)sender;

@end

@implementation ViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushNextPage:(id)sender {
    [self performSegueWithIdentifier:@"push" sender:nil];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondViewController  *one=[segue destinationViewController];
    [one returnText:^(NSString *showText) {
        self.label.text = showText;         //代码块中没有第二个视图控制器，所以不会造成循环引用
    }];
}
@end
