//
//  HHCard.h
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HHCard;
NS_ASSUME_NONNULL_BEGIN
@protocol HHCardDelegate <NSObject>
/**
 card视图完成创建，告诉代理对象刷新高度

 @param card 当前卡片
 @param height 高度
 */
- (void)card:(HHCard *)card shouldRefreshWithHeight:(CGFloat)height;

@end

/**
卡片基类，是一个抽象类，不要直接使用，要使用子类
*/
@interface HHCard : NSObject
/**
 代理对象
 */
@property(nonatomic, weak) id<HHCardDelegate> delegate;

/**
 当前VC，需要拿这个去做跳转；
 暂时做兼容，后续改成全局通用接口拿current，就不需要传递VC的引用了
 */
@property(nonatomic, weak) UIViewController *naViewController;

/**
 卡片的配置
 */
@property(nonatomic, strong) NSDictionary *cardConfig;

/**
 卡片的数据
 */
@property(nonatomic, strong) NSArray *cardData;

/**
 卡片的UI
 */
@property(nonatomic, strong) UITableViewCell *cardView;

/**
 卡片的高度
 */
@property(nonatomic, assign)CGFloat cardHeight;

/**
 卡片的初始化方法

 @param config 卡片配置数据
 @return 卡片实例
 */
- (instancetype)initWithConfig:(NSDictionary *)config;

/**
 VC发消息告诉当前卡片呈现了
 */
- (void)cardHasShow;


/**
 执行回调，向VC申请刷新该cell
 */
- (void)applyRefresh;

@end

NS_ASSUME_NONNULL_END
