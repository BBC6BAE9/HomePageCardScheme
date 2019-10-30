//
//  HHFakeNav.h
//  CardDemo
//
//  Created by huang on 2019/10/30.
//  Copyright © 2019 huang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol HHFakeSearchBarDelegate <NSObject>

@optional

/// 跳转到SerachVC
- (void)pushToSearchVC;

/// 返回
- (void)backBtnAction;

@end

@interface HHFakeNav : UIView

@property (nonatomic, weak) id <HHFakeSearchBarDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
