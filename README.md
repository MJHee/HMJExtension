# HMJExtension
扩展

##NSCalendar+HMJExtension
iOS8.0前后创建日历对象的方式不同
+ (instancetype)calendar;
[NSCalendar calendar]

##NSDate+HMJExtension
/**
 *  时间间隔比较
 */
- (NSDateComponents *)intervalToDate:(NSDate *)date;
/**
 *  与当前时间的间隔
 */
- (NSDateComponents *)intervalToNow;
/**
 *  是否为今年
 */
- (BOOL)isThisYear;
/**
 *  是否为今天
 */
- (BOOL)isToday;
/**
 *  是否为昨天
 */
- (BOOL)isYesterday;
/**
 *  是否为明天
 */
- (BOOL)isTomorrow;




##NSString+HMJExtension
提供地址字符串的文件或文件夹的文件大小
/**
 *  文件大小
 */
- (unsigned long long)filesize;

##UIBarButtonItem+HMJExtension
直接可以赋值图片,高亮图片和点击事件的方法
+ (instancetype)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action;

##UIImage+HMJCIrcleImage
设置图片是圆角图片
+ (instancetype)hmj_circleImage:(NSString *)imageName;
- (instancetype)hmj_circleImage;

##UIImage+HMJOriginalImage
设置保持原始图片不被渲染
+ (instancetype)imageWithOriginalWithImageName:(NSString *)imageName;

##UIImage+HMJStrachImage
设置图片拉伸不变形
+ (instancetype)imageWithStrachImageName:(NSString *)imageName;


##UIView+HMJExtension
@property(nonatomic, assign) CGFloat hmj_x;
@property(nonatomic, assign) CGFloat hmj_y;
@property(nonatomic, assign) CGFloat hmj_width;
@property(nonatomic, assign) CGFloat hmj_height;

@property(nonatomic, assign) CGFloat hmj_centerX;
@property(nonatomic, assign) CGFloat hmj_centerY;

@property(nonatomic, assign) CGFloat hmj_right;
@property(nonatomic, assign) CGFloat hmj_bottom;

+ (instancetype)viewFormXib;


##UITextField+HMJExtension
/**< 占位文字颜色*/
@property (nonatomic, strong)UIColor *hmj_placeholderColor;
