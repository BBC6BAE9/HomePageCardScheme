//
//  HHExampleCollectionViewCell.m
//  CardDemo
//
//  Created by huang on 2019/10/30.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHExampleCollectionCell.h"
#import "HHUIDefine.h"

@interface HHExampleCollectionCell()

@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, weak) UILabel *textLabel;

@end
@implementation HHExampleCollectionCell

- (instancetype)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:HHRectMake((375/4 - 36) / 2, 5, 36, 36)];
    imageView.image = [UIImage imageNamed:@"word2"];
    _imageView = imageView;
    [self addSubview:imageView];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:HHRectMake(0, 50, 375 / 4, 20)];
    lb.textAlignment = NSTextAlignmentCenter;
    _textLabel = lb;
    lb.text = @"Word";
    [self addSubview:lb];
    
}

- (void)setDataDic:(NSDictionary *)dataDic{
    _dataDic = dataDic;
    _textLabel.text = dataDic[@"text"];
    _imageView.image = [UIImage imageNamed:dataDic[@"image"]];
    
}
@end
