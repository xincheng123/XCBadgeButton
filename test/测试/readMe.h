使用说明:
//0.使用时倒入头文件,创建对象设置即可
//1.不要设置该按钮的尺寸,尺寸是按照你给按钮设置的badgeValue字符串动态变换的
//2.这个按钮的位置是任意排放的,需要你自己去设置位置

//试用消息提醒数字按钮
    XCBadgeButton * button = [[XCBadgeButton alloc] init];
//设置提醒的字符串
    button.badgeValue = @"999";
//设置位置
    button.center = self.view.center;
    [self.view addSubview:button];
    
