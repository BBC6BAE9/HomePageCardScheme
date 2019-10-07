//
//  HHCard.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHCard.h"

@interface HHCard()

@property(nonatomic, assign)BOOL hasShow;

@end
@implementation HHCard
//-----------------------------------------------------


- (instancetype)initWithConfig:(NSDictionary *)config
{
    self = [super init];
    if (self) {
        _cardConfig = config;
        _cardHeight = 400;
    }
    return self;
}

- (void)applyRefresh{
    if (self.cardView) {
        if (self.delegate&&[self.delegate respondsToSelector:@selector(card:shouldRefreshWithHeight:)]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.delegate card:self shouldRefreshWithHeight:self.cardHeight];
            });
        }
    }
}

- (void)cardHasShow{
    if (_hasShow) {
        return;
    }
    _hasShow = YES;
    // 在这个地方可以进行一些打点操作
}

@end
