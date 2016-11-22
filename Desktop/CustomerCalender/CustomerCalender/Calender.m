//
//  Calender.m
//  clander
//
//  Created by pro on 1/16/16.
//  Copyright © 2016 pro. All rights reserved.
//

#import "Calender.h"
#import "dayView.h"
#import "UIColor+Color.h"

@implementation Calender

-(void)setDate:(NSDate *)date{
    
    [self createClanderWithDay:date];
    
}

-(void)createClanderWithDay:(NSDate *)date{
    
    NSArray * array = @[@"日",@"一",@"二",@"三",@"四",@"五",@"六"];
    
    self.backgroundColor = [UIColor whiteColor];
    
    CGFloat itemW = self.frame.size.width / 7;
    CGFloat itemH = 20;
    
    int i = 0;
    
    // 加载日历标签
    
    for (NSString * day  in array) {
        
        UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(i * itemW, 0, itemW, itemH)];
        label.font = [UIFont systemFontOfSize:12.0];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = day;
        
        [self addSubview:label];
        
        i ++;
        
    }
    
    // 计算当月天数
    
    NSCalendar * clander = [NSCalendar currentCalendar];
    NSUInteger count = [clander rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:date].length;         // 总天数
    
    // 计算当月第一天周几
    
    NSDateComponents * components = [clander components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:date];
    components.day = 1;             // 设置为 1 号
    NSDate * firstDay = [clander dateFromComponents:components];
    
    NSUInteger firskDayWeek = [clander ordinalityOfUnit:NSCalendarUnitWeekday inUnit:NSCalendarUnitWeekOfMonth forDate:firstDay];
    
    firskDayWeek --;
    // 计算周数
    
    NSUInteger c = count + firskDayWeek;                // 总条目数
    
    NSUInteger weeks = 0;                               // 计算出来需要的行数
    
    weeks = c / 7;
    
    if (c % 7 != 0) {
        
        weeks ++ ;
    }
    
    
    itemH = (self.frame.size.height - 22) / weeks;
    
    _dayNumbers = [NSMutableArray array];
    UIColor * bgColor = [UIColor CalanderBackGroundColor];                  // 背景色
    
    for (int i = 0; i < weeks; i++) {
        
        
        for (int k = 0; k < 7;  k++) {
            
            CGFloat x = k * itemW;                       // x
            CGFloat y = i * itemH + 22;                 // y
            
            
            NSInteger dayNumber = i * 7 + k + 1 - firskDayWeek;          // 号数
            
            
            dayView * day = [[dayView alloc] initWithFrame:CGRectMake(x, y, itemW, itemH)];
            
            if (dayNumber >= 1 && dayNumber <= count) {
                
                day.day = [NSString stringWithFormat:@"%lu",dayNumber];
                
            }else if (dayNumber >0 && dayNumber > count){
                
                day.backgroundColor = bgColor;
            }
            
            [_dayNumbers addObject:day];
            [self addSubview:day];
            
        }
        
    }
    
    // 添加横线
    //
    
    UIView * line_hontroic = [[UIView alloc] initWithFrame:CGRectMake(0, 21 , self.frame.size.width, 1.0)];
    line_hontroic.backgroundColor = bgColor;
    [self addSubview:line_hontroic];
    
    for (int i = 1; i <= weeks; i ++) {
        
        CGFloat y = i * itemH + 22 - 1;
        UIView * line_1 = [[UIView alloc] initWithFrame:CGRectMake(0, y, self.frame.size.width, 1.0)];
        line_1.backgroundColor = bgColor;
        [self addSubview:line_1];
        
    }
    
    //    // 添加竖线
    //
    UIView *line_vertic = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1.0, self.frame.size.height )];
    line_vertic.backgroundColor = bgColor;
    [self addSubview:line_vertic];
    
    for ( int i = 1; i <= 7; i++) {
        
        CGFloat x = itemW * i - 1;
        
        UIView * line_2 = [[UIView alloc] initWithFrame:CGRectMake(x, 22, 1.0, self.frame.size.height - 22)];
        
        if (i == 7) {
            
            line_2.frame = CGRectMake(x, 0, 1.0,self.frame.size.height);
    }
        
        line_2.backgroundColor = bgColor;
        [self addSubview:line_2];
    }
}
-(void)setSignArray:(NSArray *)signArray{
    
    
    for (dayView * day in _dayNumbers) {
        
        
        if ([signArray containsObject:day.day]) {
            
            day.isQianDao = true;
        }
        
        
    }
    
    
}
@end
