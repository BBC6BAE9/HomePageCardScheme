//
//  NetProxy.h
//  CardDemo
//
//  Created by huang on 2019/10/29.
//  Copyright © 2019 huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HHUIDefine.h"

NS_ASSUME_NONNULL_BEGIN
#define netProxy [NetProxy sharedNetProxy]

@interface NetProxy : NSObject
SINGLETON_FOR_HEADER(NetProxy);
- (void)fetchDataWithURLStr:(NSString *)urlStr params:(NSDictionary *)dic Success:(void (^)(NSDictionary * dataDic))success;

@end

NS_ASSUME_NONNULL_END
