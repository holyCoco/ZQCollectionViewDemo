//
//  TestCollectionCell.m
//  ZQCollectionView
//
//  Created by zq on 16/4/11.
//  Copyright © 2016年 zhangqiang. All rights reserved.
//

#import "TestCollectionCell.h"

@implementation TestCollectionCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel* tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 50)];
        tempLabel.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:tempLabel];
    }
    return self;
}

@end
