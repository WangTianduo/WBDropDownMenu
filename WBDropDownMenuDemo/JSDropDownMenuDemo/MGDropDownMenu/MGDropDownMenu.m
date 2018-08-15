//
//  MGDropDownMenu.m
//  JSDropDownMenuDemo
//
//  Created by Wang Tianduo on 2018/8/15.
//  Copyright © 2018年 jsfu. All rights reserved.
//

#import "MGDropDownMenu.h"

@interface MGDropDownMenu ()<JSDropDownMenuDataSource,JSDropDownMenuDelegate>{
    NSMutableArray *_data;
}

@end

@implementation MGDropDownMenu

- (JSDropDownMenu *)initWithOrigin:(CGPoint)origin data:(NSMutableArray *)data {
    
    self = [super initWithOrigin:origin andHeight:45];
        
    _currentDataIndex = 1;
        
    _data = data;
    
    self.indicatorColor = [UIColor colorWithRed:175.0f/255.0f green:175.0f/255.0f blue:175.0f/255.0f alpha:1.0];
    self.separatorColor = [UIColor colorWithRed:210.0f/255.0f green:210.0f/255.0f blue:210.0f/255.0f alpha:1.0];
    self.textColor = [UIColor colorWithRed:83.f/255.0f green:83.f/255.0f blue:83.f/255.0f alpha:1.0f];
    self.dataSource = self;
    self.delegate = self;
    
    return self;
}


-(NSInteger)currentLeftSelectedRow:(NSInteger)column{
    return _currentDataIndex;
}

- (NSInteger)menu:(JSDropDownMenu *)menu numberOfRowsInColumn:(NSInteger)column leftRow:(NSInteger)leftRow{
    return _data.count;
}

- (NSString *)menu:(JSDropDownMenu *)menu titleForColumn:(NSInteger)column{
    return _data[_currentDataIndex];
}

- (NSString *)menu:(JSDropDownMenu *)menu titleForRowAtIndexPath:(JSIndexPath *)indexPath {
    return _data[indexPath.row];
}

- (void)menu:(JSDropDownMenu *)menu didSelectRowAtIndexPath:(JSIndexPath *)indexPath {
    _currentDataIndex = indexPath.row;
}

@end
