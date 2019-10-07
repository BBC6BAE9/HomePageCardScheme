//
//  HHCardFactory.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHCardFactory.h"
#import "HHCard.h"

@implementation HHCardFactory

- (HHCard *)cardWithConfig:(NSDictionary *)config{
    NSString *cardType = [self cardType:config[@"cardType"]];
    HHCard *card = [[NSClassFromString(cardType) alloc] initWithConfig:config];
    return card;
}

- (NSString *)cardType:(NSString *)type
{
    //type直接等于卡片的类名
    return type;
}
@end
