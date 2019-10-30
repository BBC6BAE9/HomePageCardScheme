//
//  HHTitleView.h
//  CardDemo
//
//  Created by huang on 2019/10/30.
//  Copyright © 2019 huang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol HHTitleViewDelegate <NSObject>
@optional
/// delegate 方法
- (void)didClickMoreBtn;
@end

@interface HHTitleView : UIView

@property(nonatomic, copy)NSString *titleStr;

@property(nonatomic, weak  ) id<HHTitleViewDelegate> delegate;

@property(nonatomic, assign) BOOL moreBtnHidden;

@end

NS_ASSUME_NONNULL_END
