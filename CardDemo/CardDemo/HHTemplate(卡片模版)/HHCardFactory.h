//
//  HHCardFactory.h
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HHCard;
NS_ASSUME_NONNULL_BEGIN

@interface HHCardFactory : NSObject

- (HHCard *)cardWithConfig:(NSDictionary *)config;


@end

NS_ASSUME_NONNULL_END
