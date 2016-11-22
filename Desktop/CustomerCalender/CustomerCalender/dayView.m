//
//  dayView.m
//  clander
//
//  Created by pro on 1/16/16.
//  Copyright © 2016 pro. All rights reserved.
//

#import "dayView.h"
#import "UIColor+Color.h"

@implementation dayView

-(id)initWithFrame:(CGRect)frame{

    if (self = [super initWithFrame:frame]) {
        
        self.dayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width / 2, frame.size.height / 2)];
        self.dayLabel.font = [UIFont systemFontOfSize:10.0];
        self.dayLabel.textAlignment = NSTextAlignmentCenter;
        self.dayLabel.textColor = [UIColor detailDescColor];
        
        self.gouIV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.height / 2.0, frame.size.height / 2)];
        self.gouIV.center = CGPointMake(frame.size.width / 2, frame.size.height / 2);
        self.gouIV.image = [UIImage imageNamed:@"duihao"];
        self.gouIV.hidden = true;
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.dayLabel];
        [self addSubview:self.gouIV];
    }

    return self;

}

-(void)setDay:(NSString *)day{

    self.dayLabel.text = day;
    _day = day;
}
-(void)setIsQianDao:(BOOL)isQianDao{

    if (isQianDao) {
        
        self.gouIV.hidden = false;
    }
    
}

@end
