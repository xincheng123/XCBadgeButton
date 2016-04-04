//
//  UIImage+XCChangeImage.m
//  MyWeiBo
//
//  Created by 赵新成 on 16/4/2.
//  Copyright © 2016年 赵新成. All rights reserved.
//

//判断是否为iOS7
#define iOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >=7.0)

#import "UIImage+XCChangeImage.h"

@implementation UIImage (XCChangeImage)
+(UIImage *)imageWithNamed:(NSString *)imageName{

    if (iOS7) {
        NSString * newName = [imageName stringByAppendingString:@"_os7"];
        UIImage * image = [UIImage imageNamed:newName];
        if (image == nil) {
            image = [UIImage imageNamed:imageName];
        }
        return image;
    }
    
    return [UIImage imageNamed:imageName];

}

+(UIImage *)resizeImageWithName:(NSString *)imageName{

    //加载要拉伸的图片
    UIImage * image = [self imageWithNamed:imageName];
    
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}
@end
