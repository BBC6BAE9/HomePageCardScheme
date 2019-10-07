//
//  HHTemplateVC.h
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HHCardFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface HHTemplateVC : UIViewController

/**
 配置
 */
@property (nonatomic, strong)NSArray *config;
@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)HHCardFactory *cardFactory;
@property (nonatomic, strong)NSMutableArray *cards;

/**
 设置好配置之后，调这个方法刷新界面
 */
- (void)refreshContentUI;

@end

NS_ASSUME_NONNULL_END
