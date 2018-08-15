//
//  MGDropDownMenu.h
//  JSDropDownMenuDemo
//
//  Created by Wang Tianduo on 2018/8/15.
//  Copyright © 2018年 jsfu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSDropDownMenu.h"

@interface MGDropDownMenu : JSDropDownMenu

@property NSInteger currentDataIndex;

- (instancetype)initWithOrigin:(CGPoint)origin data:(NSMutableArray *)data;

@end
