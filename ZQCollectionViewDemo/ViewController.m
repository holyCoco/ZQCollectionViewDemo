//
//  ViewController.m
//  ZQCollectionViewDemo
//
//  Created by zq on 16/4/19.
//  Copyright © 2016年 zhangqiang. All rights reserved.
//

#import "TestCollectionCell.h"
#import "ViewController.h"
#import "ZQCollectionView.h"

@interface ViewController () <ZQCollectionViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    ZQCollectionView* collectionV = [[ZQCollectionView alloc] initWithFrame:CGRectMake(0, 60, 300, 300) andHorizonNum:5 andVerticalNum:6 andScrollDirection:QCollectionScrollDirection_Horizontal andCollectionCellClass:[TestCollectionCell class]];
    collectionV.collectionBackgroundColor = [UIColor redColor];
    collectionV.backgroundColor = [UIColor clearColor];
    collectionV.isShowScrollIndicator = NO;
    collectionV.center = self.view.center;
    collectionV.collectionDelegate = self;
    [self.view addSubview:collectionV];
}
#pragma mark------------------UIScrollView.Delegate-------------------
- (void)qScrollViewDidScroll:(UIScrollView*)scrollView
{
    NSLog(@"======%f", scrollView.contentOffset.x);
}
#pragma mark------------------Collection.Delegate-------------------
- (NSInteger)qNumberOfSectionsInCollectionView:(UICollectionView*)collection
{
    return 10;
}
- (UICollectionViewCell*)qCollectionView:(UICollectionView*)collectionView
                  cellForItemAtIndexPath:(NSIndexPath*)indexPath
{
    TestCollectionCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:QCollectionCellReuseIdentity forIndexPath:indexPath];
    return cell;
}
- (void)qCollectionView:(UICollectionView*)collectionView didSelectItemAtIndexPath:(NSIndexPath*)indexPath
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
