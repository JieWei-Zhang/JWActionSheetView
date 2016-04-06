//
//  ViewController.m
//  JWActionSheetView
//
//  Created by Vinhome on 16/4/5.
//  Copyright © 2016年 JW. All rights reserved.
//

#import "ViewController.h"
#import "JWActionSheetView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *_testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _testButton.frame = CGRectMake((self.view.frame.size.width-100)/2,150, 100, 40);
    _testButton.backgroundColor = [UIColor cyanColor];
    [_testButton setTitle:@"ClickMe" forState:UIControlStateNormal];
    [_testButton addTarget:self action:@selector(ClickMe) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_testButton];
}
- (void)ClickMe
{
    JWActionSheetView *actionSheetView = [JWActionSheetView showActionSheetWithTitle:@"JW" cancelButtonTitle:@"取消" destructiveButtonTitle:@"确定" otherButtonTitles:@[@"1", @"2",@"3"] handler:^(JWActionSheetView *actionSheetView, NSInteger buttonIndex) {
        NSLog(@"%zd", buttonIndex);
    }];
    
    [actionSheetView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
