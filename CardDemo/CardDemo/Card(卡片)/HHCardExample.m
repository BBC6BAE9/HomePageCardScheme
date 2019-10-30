//
//  HHCardExample.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHCardExample.h"
#import "HHCardExampleView.h"
#import "NetProxy.h"

@interface HHCardExample()
@property(nonatomic, strong)NSString *exhibitionId;

@end

@implementation HHCardExample

- (instancetype)initWithConfig:(NSDictionary *)config{
    if ([super initWithConfig:config]) {
        self.exhibitionId = config[@"exhibitionId"];
        [self requestData];
    }
    return self;
}

- (void)requestData{
  
//    if (!self.exhibitionId) {
//        return;
//    }
    //...网络请求
    [netProxy fetchDataWithURLStr:@"app/user/services" params:@{@"token":@"10289-1233qwe-12"} Success:^(NSDictionary * _Nonnull dataDic) {
        [self createUI];
    }];
    // 网络请求成功之后创建UI界面
    
}

- (void)createUI{
    HHCardExampleView *cardView = [[HHCardExampleView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HHCardExampleView"];
    self.cardView = cardView;
//    if (self.cardData) {
//        // cardViewsetmodel
//        // 设置高度
//        
//    }
    self.cardHeight = SCALE(205);
    cardView.contentArr = @[@{@"image":@"word2",
                              @"text":@"word"
                              },
                            @{@"image":@"ppt2",
                            @"text":@"ppt"
                            },
                            @{@"image":@"excel",
                            @"text":@"Excel"
                            },
                            @{@"image":@"pdf3",
                            @"text":@"PDF"
                            },
                            @{@"image":@"pdf2",
                            @"text":@"PDF"
                            },
                            @{@"image":@"doc",
                            @"text":@"文件"
                            },
                            @{@"image":@"new",
                            @"text":@"更多"
                            }
                            ];
    [self applyRefresh];
}
@end
