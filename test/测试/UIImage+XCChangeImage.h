//
//  UIImage+XCChangeImage.h
//  MyWeiBo
//
//  Created by 赵新成 on 16/4/2.
//  Copyright © 2016年 赵新成. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XCChangeImage)
//适配iOS6和iOS7的图片
+(UIImage *) imageWithNamed:(NSString *) imageName;
//拉伸消息提醒图片
+(UIImage *)resizeImageWithName:(NSString *) imageName;
@end
