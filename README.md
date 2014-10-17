LJTools
=======

###使用方法

    #import "LJTools.h"
<!--more-->
####Then enjoy your self

##LJDeviceTool

    [LJDeviceTool getCurrentAppBuild];  //得到build版本号
    [LJDeviceTool getCurrentAppVersion]; //得到app版本号
    [LJDeviceTool getCurrentDeviceModel]; //设备型号
    [LJDeviceTool getCurrentSystemVersion]; //系统OS版本

##LJFileTool

    [LJFileTool getFilePath:@"myDict.plist"];
    [LJFileTool writeToFileContent:@[@"tom",@"jerry",@"cook"] withFileName:@"name.plist"];
    [LJFileTool writeImageToFileName:@"photo.jpg" withImgURL:@"http:test.com/test.png"];
    
    /**
     *  得到沙盒的路径
     *
     *  @param fileName 传入文件名
     *
     *  @return 返回完整路径
     */
    + (NSString *)getFilePath:(NSString *)fileName;

    /**
     *  写入文件
     *
     *  @param content  要写入的内容 通常为字典类型、数组类型
     *  @param fileName 要写的文件名
     */
    + (void)writeToFileContent:(id)content withFileName:(NSString *)fileName;

    /**
     *  写入网络图片
     *
     *  @param imgName 图片的文件名
     *  @param webURL  图片的URL
     */
    + (void)writeImageToFileName:(NSString *)imgName withImgURL:(NSString *)webURL;
     
##LJHTTPTool

    /**
     *  发送一个POST JSON请求
     *
     *  @param url     请求路径
     *  @param params  请求参数
     *  @param success 请求成功后的回调
     *  @param failure 请求失败后的回调
     */
    + (void)postJSONWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseJSON))success failure:(void (^)(NSError *error))failure;

    /**
     *  发送一个POST HTTP请求
     *
     *  @param url     请求路径
     *  @param params  请求参数
     *  @param success 请求成功后的回调
     *  @param failure 请求失败后的回调
     */
    + (void)postHTTPWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseHTTP))success failure:(void (^)(NSError *error))failure;

    /**
     *  发送一个POST请求(上传文件数据)
     *
     *  @param url     请求路径
     *  @param params  请求参数
     *  @param formData  文件参数
     *  @param success 请求成功后的回调
     *  @param failure 请求失败后的回调
     */
    + (void)postWithURL:(NSString *)url params:(NSDictionary *)params formDataArray:(NSArray *)formDataArray success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

    /**
     *  发送一个GETJSON请求
     *
     *  @param url     请求路径
     *  @param params  请求参数
     *  @param success 请求成功后的回调
     *  @param failure 请求失败后的回调
     */
    + (void)getJSONWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseJSON))success failure:(void (^)(NSError *error))failure;

    /**
     *  发送一个GET HTTP请求
     *
     *  @param url     请求路径
     *  @param params  请求参数
     *  @param success 请求成功后的回调
     *  @param failure 请求失败后的回调
     */
    + (void)getHTTPWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseHTTP))success failure:(void (^)(NSError *error))failure;
    
##LJTimeTool

    [LJTimeTool getCurrentYear];
    [LJTimeTool getCurrentInterval];
    [LJTimeTool dayNumberSinceDateWithFormat_yyyy_MM_dd:2015-09-11];

    /**
     *  获取年份
     *
     *  @return
     */
    + (NSInteger)getCurrentYear;

    /**
     *  获取当前时段
     *
     *  @return
     */
    + (NSString *)getCurrentInterval;

    /**
     *  距离某天多少天
     *
     *  @param date yyyy_MM_dd格式
     *      *  @return 天数
     */
    + (int)dayNumberSinceDateWithFormat_yyyy_MM_dd:(NSString *)date;
     
##LJUITool

    [LJUITool getPointWithFrame:frame];
    
    /**
     *  得到中点坐标
     *
     *  @param rect 当前的frame
     *
     *  @return 点坐标
     */
    + (CGPoint)getPointWithFrame:(CGRect)rect;
     
##UIView+LJ

    #import "UIView+LJ"
    UIView *view = [[UIView alloc] init]
    view.x = 60;
    etc...

	//扩展一些属性
	@property (assign, nonatomic) CGFloat x;
	@property (assign, nonatomic) CGFloat y;
	@property (assign, nonatomic) CGFloat width;
	@property (assign, nonatomic) CGFloat height;
	@property (assign, nonatomic) CGSize size;
	@property (assign, nonatomic) CGPoint origin;

##UIImage+LJ

    //用法同上
    /**
     *  加载图片
     *
     *  @param name 图片名
     */
    + (UIImage *)imageWithName:(NSString *)name;

    /**
     *  返回一张自由拉伸的图片
     */
    + (UIImage *)resizedImageWithName:(NSString *)name;
    + (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;
