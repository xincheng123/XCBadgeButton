//
//  XCBadgeButton.m
//  MyWeiBo
//
//  Created by 赵新成 on 16/4/4.
//  Copyright © 2016年 赵新成. All rights reserved.
//

#import "XCBadgeButton.h"

@implementation XCBadgeButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置他的背景图片
        [self setBackgroundImage:[UIImage resizeImageWithName:@"main_badge"] forState:UIControlStateNormal];
        
        
        //默认按钮是隐藏的
        self.hidden = YES;
        
        //设置消息提醒按钮不可点击
        self.userInteractionEnabled = NO;
    }
    return self;
}

//通过传送进来的字符串,计算当前按钮的宽高
-(void)setBadgeValue:(NSString *)badgeValue{

    _badgeValue = badgeValue.copy;
    
    //通过判断item.badgeValue是否有值类决定消息提示按钮是否显示
    if (badgeValue) {
        self.hidden = NO;
        [self setTitle:badgeValue forState:UIControlStateNormal];
        //设置消息提醒按钮的尺寸
//        CGFloat bandgeButtonY = 5;
        CGFloat bandgeButtonH = self.currentBackgroundImage.size.height;
        CGFloat bandgeButtonW = self.currentBackgroundImage.size.width;
        if (badgeValue.length > 1) {
            //计算文字尺寸
            CGSize badgeSize = [badgeValue sizeWithFont:self.titleLabel.font];
            
            bandgeButtonW = badgeSize.width + 10;
        }
        
        //此时当前按钮的frame尺寸为0,所以有Bug
//        CGFloat bandgeButtonX = self.frame.size.width - bandgeButtonW;
        CGRect bandgeFrame = self.frame;
        bandgeFrame.size.width = bandgeButtonW;
        bandgeFrame.size.height = bandgeButtonH;
        self.frame = bandgeFrame;        
        
    }else{
        
        self.hidden = YES;
    }
    

}

@end
