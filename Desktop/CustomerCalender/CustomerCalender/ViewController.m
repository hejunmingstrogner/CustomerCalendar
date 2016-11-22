//
//  ViewController.m
//  CustomerCalender
//
//  Created by 何俊明 on 2016/11/22.
//  Copyright © 2016年 何俊明. All rights reserved.
//

#import "ViewController.h"
#import "Calender.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Calender * calenderView = [[Calender alloc] initWithFrame:CGRectMake(0, 0, 400, 200)];
    calenderView.center     = self.view.center;
    calenderView.date       = [NSDate date];
    calenderView.signArray = @[@"2",@"4",@"6",@"8",@"10",@"12"];
    
    
    [self.view addSubview:calenderView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
