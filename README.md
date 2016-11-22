#CustomerCalendar
## 功能介绍 ##

    为项目快速集成日历功能提供了，支付自定义的单个天数
## 使用介绍：##

1. Calender 类为一个日期类 view,直接初始化，设置frame值后，添加。需要指定 date，可以用时间戮生成一个NSDate，自动计算当前月天数，singArray 为当月签到日期数组。
@property (nonatomic,strong) NSArray * signArray;                 （指定签到日期字典）
@property (nonatomic,strong) NSDate * date;                         
@property (readonly,strong) NSMutableArray * dayNumbers;               // 天数
2. dayView 为一个自定义的一天view，可以自定义。
