//
//  OtherViewController.m
//  Block值传递
//
//  Created by 初心 on 14-5-4.
//  Copyright (c) 2014年 初心. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

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
    // Do any additional setup after loading the view.
    
    _textOne = [[UITextField alloc]initWithFrame:CGRectMake(160, 200, 70, 44)];
    _textOne.backgroundColor = [UIColor grayColor];
    //    _labelOne.text = @"21312";
    [self.view addSubview:_textOne];
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonOne setTitle:@"传递" forState:UIControlStateNormal];
    buttonOne.frame = CGRectMake(160,100, 70, 44);
    [self.view addSubview:buttonOne];
    [buttonOne addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
}


- (void)showTextFieldUsingBlock:(MyBlock)block
{
    self.block = block;
}


- (void)clickBtn
{
    if (self.block) {
        self.block(_textOne);
    }
    [self.navigationController popViewControllerAnimated:YES];
}
// typedef void (^MyBlock)(UITextField *textOne);

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
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
