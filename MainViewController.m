//
//  MainViewController.m
//  Block值传递
//
//  Created by 初心 on 14-5-4.
//  Copyright (c) 2014年 初心. All rights reserved.
//

#import "MainViewController.h"
#import "OtherViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _labelTwo = [[UITextField alloc]initWithFrame:CGRectMake(160, 200, 70, 44)];
    _labelTwo.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_labelTwo];
    
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(160, 100, 100, 44);
    [btn setTitle:@"chuan" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    OtherViewController *other = [[OtherViewController alloc] init];
    [other showTextFieldUsingBlock:^(UITextField *textOne) {
        _labelTwo.text = textOne.text;
    }];

    [self.navigationController pushViewController:other animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
