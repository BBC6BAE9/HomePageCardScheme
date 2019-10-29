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

- (void)fetchDataWithURLStr:(NSString *)urlStr params:(NSDictionary *)dic Success:(void (^)(NSDictionary * dataDic))success{
    
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        NSDictionary *resultDic = @{
            @"huang":@"hong"
        };
        success(resultDic);
    });
    
    
}

@end
