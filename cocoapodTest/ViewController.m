//
//  ViewController.m
//  cocoapodTest
//
//  Created by LinXuBin on 15-5-19.
//  Copyright (c) 2015年 LinXuBin. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "twoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(110, 100, 100, 30)];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor greenColor];
    label.text = @"林旭斌";
    [self.view addSubview:label];
    
    label.userInteractionEnabled = YES;
    [label addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(test)]];
}


- (void)test
{
    twoViewController *cc = [[twoViewController alloc] init];
    [self.navigationController pushViewController:cc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
