#ZQ_CollectionView

A horizontal collectionView can show the horizontal data.

  这是一个可以把数据横向排列并且横向滚动的collectionView，你可以用以下代码来运行：

    ZQCollectionView* collectionV = [[ZQCollectionView alloc] initWithFrame:CGRectMake(0, 60, 300, 300) andHorizonNum:5 andVerticalNum:6 andScrollDirection:QCollectionScrollDirection_Horizontal andCollectionCellClass:[TestCollectionCell class]];
    collectionV.collectionDelegate = self;
    [self.view addSubview:collectionV];

  有几个属性是可以设置的：

    collectionBackgroundColor
    pagingEnabled
    bounces
    Delegate:

  代理里面的方法(之所以没有cellForItemAtIndexPath代理方法是因为在初始化方法 "- (instancetype)initWithFrame:(CGRect)frame andHorizonNum:(int)horizonNumber andVerticalNum:(int)verticalNumber andScrollDirection:(QCollectionScrollDirection)qCollectionScrollDirection andCollectionCellClass:(Class)cellClass" 里面已有对一个section里面的横向number:HorizonNum和纵向number:VerticalNum有设置了)：

    * -(NSInteger)qNumberOfSectionsInCollectionView:(UICollectionView*)collection { return 10; }
    * -(UICollectionViewCell)qCollectionView:(UICollectionView)collectionView cellForItemAtIndexPath:(NSIndexPath)indexPath { //cell是继承于UICollectionViewCell的子类，QCollectionCellReuseIdentity在ZQCollectionView.h文件中已定义 TestCollectionCell cell = [collectionView dequeueReusableCellWithReuseIdentifier:QCollectionCellReuseIdentity forIndexPath:indexPath]; return cell; }
    * -(void)qCollectionView:(UICollectionView)collectionView didSelectItemAtIndexPath:(NSIndexPath)indexPath { }

  由于自己的无知导致后面用到需要collection父类scrollView的代理的时候无从下手，此处添加：

    * -(void)qScrollViewDidScroll:(UIScrollView*)scrollView;
    * -(void)qScrollViewWillBeginDragging:(UIScrollView*)scrollView;
    * -(void)qScrollViewWillEndDragging:(UIScrollView)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint)targetContentOffset;
    * -(void)qScrollViewDidEndDragging:(UIScrollView*)scrollView willDecelerate:(BOOL)decelerate;
    * -(void)qScrollViewWillBeginDecelerating:(UIScrollView*)scrollView;
    * -(void)qScrollViewDidEndDecelerating:(UIScrollView*)scrollView;
    * -(void)qScrollViewDidEndScrollingAnimation:(UIScrollView*)scrollView;
