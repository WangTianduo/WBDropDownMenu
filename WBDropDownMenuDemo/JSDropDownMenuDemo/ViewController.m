//
//  ViewController.m
//  JSDropDownMenuDemo
//
//  Created by Wang Tianduo on 2018/8/15.
//  Copyright © 2018年 Wang Tianduo. All rights reserved.
//

#import "ViewController.h"
#import "MGDropDownMenu.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *data = [NSMutableArray arrayWithObjects:@"智能排序", @"离我最近", @"评价最高", @"最新发布", @"人气最高", @"价格最低", @"价格最高", nil];
    MGDropDownMenu *menu = [[MGDropDownMenu alloc] initWithOrigin:CGPointMake(100, 100) data:data];
    [self.view addSubview:menu];
    
    NSLog(@"%@", @(menu.currentDataIndex));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
