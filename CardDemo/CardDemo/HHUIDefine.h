//
//  HHUIDefine.h
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#ifndef HHUIDefine_h
#define HHUIDefine_h

// 屏幕大小
#define  ScreenBounds           [UIScreen mainScreen].bounds
#define  SCREEN_WIDTH            [UIScreen mainScreen].bounds.size.width
#define  SCREEN_HEIGHT           [UIScreen mainScreen].bounds.size.height
// 屏幕宽度比例
#define  ScaleWidth             (ScreenWidth / 375.0f)
#define  ScaleHeight            (ScreenHeight / 667.0f)
#define  ScaleSize              ScaleWidth
// 状态栏高度
#define StatusBarHeight         [[UIApplication sharedApplication] statusBarFrame].size.height
// 导航栏高度
#define NAV_HEIGHT     (StatusBarHeight + 44)

#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]

#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#endif /* HHUIDefine_h */
