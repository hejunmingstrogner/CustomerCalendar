//
//  Calender.h
//  clander
//
//  Created by pro on 1/16/16.
//  Copyright © 2016 pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Calender : UIView

@property (nonatomic,strong) NSArray * signArray;
@property (nonatomic,strong) NSDate * date;

@property (readonly,strong) NSMutableArray * dayNumbers;               // 天数

@end
