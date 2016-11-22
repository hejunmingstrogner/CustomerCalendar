# CustomerCalendar #

<div style="float: right"><img src="https://thumbnail0.baidupcs.com/thumbnail/f7fd354f38a2e4ce932376bd2363f457?fid=2150171115-250528-979240677320594&time=1479826800&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-PwwZ1l45zr86x8vJ4J0gWF4NShQ%3D&expires=8h&chkv=0&chkbd=0&chkpc=&dp-logid=7584043476209295994&dp-callid=0&size=c710_u400&quality=100" /></div>

## 功能介绍 ##

    为项目快速集成日历功能提供了，支付自定义的单个天数

## 使用介绍：##

1. Calender 类为一个日期类 view,直接初始化，设置frame值后，添加。需要指定 date，可以用时间戮生成一个NSDate，自动计算当前月天数，singArray 为当月签到日期数组。
@property (nonatomic,strong) NSArray * signArray;                 （指定签到日期字典）
@property (nonatomic,strong) NSDate * date;                         
@property (readonly,strong) NSMutableArray * dayNumbers;               // 天数
2. dayView 为一个自定义的一天view，可以自定义。
