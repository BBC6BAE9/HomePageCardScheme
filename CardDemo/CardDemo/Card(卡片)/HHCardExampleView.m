//
//  HHCardExampleView.m
//  CardDemo
//
//  Created by huang on 2019/10/7.
//  Copyright © 2019 huang. All rights reserved.
//

#import "HHCardExampleView.h"
#import "HHExampleCollectionCell.h"
#import "HHTitleView.h"
#import "HHUIDefine.h"

@interface HHCardExampleView()<UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) UICollectionView *collectionView;
@property (nonatomic, weak) HHTitleView *titleView;

@end

@implementation HHCardExampleView

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
       
        self.cardHeight = 400;
        self.contentView.backgroundColor = [UIColor whiteColor];
        
        HHTitleView *titleView = [[HHTitleView alloc] initWithFrame:HHRectMake(0, 9, 375, 30)];
        titleView.titleStr = @"我的文件";
        _titleView = titleView;
        [self.contentView addSubview:_titleView];
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.itemSize = CGSizeMake(SCALE(375) / 4, SCALE(150)/2);
        flowLayout.minimumLineSpacing = 0;
        flowLayout.minimumInteritemSpacing = 0;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        flowLayout.headerReferenceSize = CGSizeMake(0, 0);
        
        UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:HHRectMake(0, 9 * 2 + 30, 375, 150) collectionViewLayout:flowLayout];
        _collectionView = collectionView;
        collectionView.showsVerticalScrollIndicator = NO;
        collectionView.showsHorizontalScrollIndicator = NO;
        collectionView.backgroundColor = [UIColor whiteColor];
        collectionView.delegate = self;
        collectionView.dataSource = self;
        [collectionView registerClass:[HHExampleCollectionCell class] forCellWithReuseIdentifier:@"exampleCell"];
        [self.contentView addSubview:collectionView];
        
    }
    return self;
}

#pragma mark - UICollectionView dataSource & dataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.contentArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
  
    HHExampleCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"exampleCell" forIndexPath:indexPath];
    NSDictionary *dataDic = _contentArr[indexPath.row];
    cell.backgroundColor = [UIColor whiteColor];
    cell.dataDic = dataDic;
    return cell;
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(SCALE(375 / 4), SCALE(75));
}

#pragma mark - Setter方法
- (void)setContentArr:(NSArray *)contentArr{
    _contentArr = contentArr;
    [self.collectionView reloadData];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
