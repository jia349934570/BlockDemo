//
//  OtherViewController.h
//  Block值传递
//
//  Created by 初心 on 14-5-4.
//  Copyright (c) 2014年 初心. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^MyBlock)(UITextField *textOne);

@interface OtherViewController : UIViewController
@property (nonatomic, retain)UITextField *textOne;
@property(nonatomic, strong) MyBlock block;
- (void)showTextFieldUsingBlock:(MyBlock)block;
@end
//@property (nonatomic, weak) void (^MyBlock)(UITextField *textOne);
