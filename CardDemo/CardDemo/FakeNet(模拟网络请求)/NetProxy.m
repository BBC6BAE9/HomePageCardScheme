//
//  NetProxy.m
//  CardDemo
//
//  Created by huang on 2019/10/29.
//  Copyright © 2019 huang. All rights reserved.
//

#import "NetProxy.h"

@implementation NetProxy
SINGLETON_FOR_CLASS(NetProxy);

- (void)fetchDataWithURLStr:(NSString *)urlStr params:(NSDictionary *)dic Success:(void (^)(NSArray * dataArr))success{
    
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.75 * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        NSArray *resultArr = @[@{@"image":@"word2",
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
                               @{@"image":@"collection",
                                 @"text":@"收藏"
                               },
                               
                               @{@"image":@"new",
                                 @"text":@"更多"
                               }
        ];
        success(resultArr);
    });
    
}

@end

