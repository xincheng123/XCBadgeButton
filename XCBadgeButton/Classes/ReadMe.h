使用说明:
//1.把.png的素材导入项目的Assets.xcassets里面
//2.使用时导入"XCBadgeButton.h"头文件,这里导入头文件可能没有智能提示,创建对象设置即可
//3.不要设置该按钮的尺寸,尺寸是按照你给按钮设置的badgeValue字符串动态变换的
//4.这个按钮的位置是任意排放的,需要你自己去设置位置

//试用消息提醒数字按钮
    XCBadgeButton * button = [[XCBadgeButton alloc] init];
//设置提醒的字符串
    button.badgeValue = @"999";
//设置位置
    button.center = self.view.center;
    [self.view addSubview:button];
