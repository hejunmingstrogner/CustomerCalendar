//
//  dayView.h
//  clander
//
//  Created by pro on 1/16/16.
//  Copyright © 2016 pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dayView : UIView

@property (nonatomic,strong) UILabel * dayLabel;                     // 天数
@property (nonatomic,strong) UIImageView * gouIV;                    // 是否选中

@property (nonatomic,strong) NSString * day;                         // number
@property (nonatomic) BOOL isQianDao;

@end
