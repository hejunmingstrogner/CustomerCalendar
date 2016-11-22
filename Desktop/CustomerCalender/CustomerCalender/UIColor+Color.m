//
//  UIColor+Color.m
//  gp
//
//  Created by pro on 3/2/16.
//  Copyright © 2016 pro. All rights reserved.
//

#import "UIColor+Color.h"

@implementation UIColor (Color)

// 便捷化工厂方法
+(UIColor *)RGB:(CGFloat)R :(CGFloat)G :(CGFloat)B{
    
    return [UIColor RGB:R :G :B :255];
}
+(UIColor *)RGB:(CGFloat)R :(CGFloat)G :(CGFloat)B :(CGFloat)A{
    
    return [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A/255.0];
}


+(UIColor *)detailDescColor{
    
    return [UIColor RGB:86 :86 :86];
}
// 日历背景颜色

+(UIColor *)CalanderBackGroundColor{
    
    return [UIColor RGB:255 :215 :157];
}
// 日历月份颜色
+(UIColor *)CalanderMonthColor{
    
    
    return [UIColor RGB:230 :39 :36];
}
@end

